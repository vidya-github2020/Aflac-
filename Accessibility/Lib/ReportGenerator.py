"""
Report Generator Module

This module handles generating accessibility reports in various formats (JSON, HTML, combined).
It provides a clean interface for creating formatted reports from accessibility scan results.

Author: Accessibility Testing Team
Version: 2.0.0
Date: 2024-10-24
"""

import json
import os
import glob
from datetime import datetime
from typing import Dict, List, Any, Optional, Tuple
import logging

try:
    # Try relative import first (when imported as package)
    from .HtmlTemplates import HtmlTemplateGenerator
except ImportError:
    # Fall back to absolute import (when run directly)
    from HtmlTemplates import HtmlTemplateGenerator


class ReportGenerator:
    """
    Handles generation of accessibility reports in multiple formats.
    
    This class is responsible for creating JSON, HTML, and combined reports
    from accessibility scan results.
    """
    
    def __init__(self, results_directory: str):
        """
        Initialize the report generator.
        
        Args:
            results_directory: Directory where reports will be saved
        """
        self.results_directory = os.path.abspath(results_directory)
        self.logger = logging.getLogger('ReportGenerator')
        
        # Ensure results directory exists
        os.makedirs(self.results_directory, exist_ok=True)
        
        # Configuration options
        self.include_passes_in_reports = False
        self.max_nodes_per_violation = 5
        self.generate_json_reports = True
        self.generate_html_reports = True
    
    def configure_options(self, include_passes: bool = False, max_nodes: int = 5,
                         generate_json: bool = True, generate_html: bool = True) -> None:
        """Configure report generation options."""
        self.include_passes_in_reports = include_passes
        self.max_nodes_per_violation = max_nodes
        self.generate_json_reports = generate_json
        self.generate_html_reports = generate_html
        
        self.logger.info(f"Report options configured: JSON={generate_json}, HTML={generate_html}, "
                        f"include_passes={include_passes}, max_nodes={max_nodes}")
    
    def generate_reports(self, results: Dict[str, Any], filename: str, 
                        scan_metadata: Optional[Dict[str, Any]] = None) -> Tuple[Optional[str], Optional[str]]:
        """
        Generate accessibility reports from scan results.
        
        Args:
            results: Accessibility scan results from axe-core
            filename: Base filename for reports (without extension)
            scan_metadata: Optional metadata about the scan (URL, timestamp, etc.)
            
        Returns:
            Tuple of (json_path, html_path) for generated files
        """
        json_path = None
        html_path = None
        
        # Ensure filename has .json extension for primary filename
        if not filename.endswith('.json'):
            filename = filename.rsplit('.', 1)[0] + '.json'
        
        try:
            # Generate JSON report
            if self.generate_json_reports:
                json_path = self._generate_json_report(results, filename)
            
            # Generate HTML report
            if self.generate_html_reports:
                html_filename = filename.replace('.json', '.html')
                html_path = self._generate_html_report(results, html_filename, scan_metadata)
            
            self.logger.info(f"Reports generated - JSON: {bool(json_path)}, HTML: {bool(html_path)}")
            return json_path, html_path
            
        except Exception as e:
            error_msg = f"Error generating reports: {str(e)}"
            self.logger.error(error_msg)
            raise RuntimeError(error_msg) from e
    
    def generate_combined_report(self, report_name: str = "combined_accessibility_report") -> Tuple[str, int]:
        """
        Generate a combined HTML report from all JSON reports in the results directory.
        
        Args:
            report_name: Name for the combined report file
            
        Returns:
            Tuple of (html_path, total_violations)
        """
        try:
            # Find all JSON files
            json_pattern = os.path.join(self.results_directory, "*.json")
            json_files = glob.glob(json_pattern)
            
            if not json_files:
                raise ValueError("No accessibility reports found to combine")
            
            # Load and process all reports
            all_reports = []
            total_violations = 0
            
            for json_file in json_files:
                try:
                    report_info = self._load_report_info(json_file)
                    all_reports.append(report_info)
                    total_violations += report_info['violations_count']
                except Exception as e:
                    self.logger.warning(f"Error loading {json_file}: {str(e)}")
            
            if not all_reports:
                raise ValueError("No valid accessibility reports found")
            
            # Sort reports by violations (highest first), then by name
            all_reports.sort(key=lambda x: (-x['violations_count'], x['name']))
            
            # Generate combined HTML report
            html_path = os.path.join(self.results_directory, f"{report_name}.html")
            self._generate_combined_html_report(all_reports, html_path, total_violations)
            
            self.logger.info(f"Combined report generated: {html_path} ({len(all_reports)} reports, {total_violations} violations)")
            return html_path, total_violations
            
        except Exception as e:
            error_msg = f"Error generating combined report: {str(e)}"
            self.logger.error(error_msg)
            raise RuntimeError(error_msg) from e
    
    def _generate_json_report(self, results: Dict[str, Any], filename: str) -> str:
        """Generate JSON report file."""
        json_path = os.path.join(self.results_directory, filename)
        
        with open(json_path, 'w', encoding='utf-8') as f:
            json.dump(results, f, indent=2, ensure_ascii=False)
        
        return json_path
    
    def _generate_html_report(self, results: Dict[str, Any], filename: str, 
                             scan_metadata: Optional[Dict[str, Any]] = None) -> str:
        """Generate HTML report file."""
        html_path = os.path.join(self.results_directory, filename)
        
        violations = results.get('violations', [])
        passes = results.get('passes', [])
        incomplete = results.get('incomplete', [])
        inapplicable = results.get('inapplicable', [])
          # Get scan metadata with error handling
        try:
            if scan_metadata:
                scan_url = scan_metadata.get('url', 'Unknown')
                scan_time = scan_metadata.get('timestamp', datetime.now())
            else:
                scan_url = 'Unknown'
                scan_time = datetime.now()
        except Exception as e:
            self.logger.error(f"Error processing scan metadata: {e}")
            scan_url = 'Unknown'
            scan_time = datetime.now()
          # Format timestamp
        if isinstance(scan_time, datetime):
            formatted_time = scan_time.strftime("%Y-%m-%d %H:%M:%S")
        else:
            formatted_time = str(scan_time)        # Generate HTML content
        try:
            self.logger.info(f"Generating HTML with timestamp: {formatted_time}, scan_url: {scan_url}")
            template_generator = HtmlTemplateGenerator(self.max_nodes_per_violation)
            
            html_content = template_generator.generate_individual_report(
                violations=violations,
                passes=passes,
                incomplete=incomplete,
                inapplicable=inapplicable,
                scan_url=scan_url,
                timestamp=formatted_time,
                include_passes=self.include_passes_in_reports
            )
        except Exception as e:
            self.logger.error(f"Error generating HTML content: {e}")
            raise
        
        with open(html_path, 'w', encoding='utf-8') as f:
            f.write(html_content)
        
        return html_path
    
    def _generate_combined_html_report(self, all_reports: List[Dict[str, Any]], 
                                     html_path: str, total_violations: int) -> None:
        """Generate combined HTML report from multiple report data."""
        template_generator = HtmlTemplateGenerator(self.max_nodes_per_violation)
        
        html_content = template_generator.generate_combined_report(
            all_reports=all_reports,
            total_violations=total_violations
        )
        
        with open(html_path, 'w', encoding='utf-8') as f:
            f.write(html_content)
    
    def _load_report_info(self, json_file: str) -> Dict[str, Any]:
        """Load report information from a JSON file."""
        with open(json_file, 'r', encoding='utf-8') as f:
            results = json.load(f)
        
        base_name = os.path.basename(json_file)
        display_name = base_name.replace('_accessibility.json', '').replace('_', ' ').replace('.json', '').title()
        
        return {
            'name': base_name,
            'display_name': display_name,
            'file_path': json_file,
            'results': results,
            'violations_count': len(results.get('violations', [])),
            'passes_count': len(results.get('passes', [])),
            'incomplete_count': len(results.get('incomplete', [])),
            'inapplicable_count': len(results.get('inapplicable', []))
        }
