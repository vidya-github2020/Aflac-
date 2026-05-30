"""
HTML Template Generator Module (Refactored)

This module provides the main orchestrator for HTML accessibility report generation.
It coordinates between specialized modules for templates, generators, and utilities.

Author: Accessibility Testing Team
Version: 3.0.0 (Refactored)
Date: 2024-11-03
"""

from datetime import datetime
from typing import Dict, List, Any

# Import refactored components
from templates import BaseTemplates
from generators import SectionGenerator, RuleGenerator, OverviewGenerator
from utils import TextUtils


class HtmlTemplateGenerator:
    """
    Main orchestrator for HTML accessibility report generation.
    
    This class coordinates between specialized modules to generate complete HTML reports
    with interactive elements for displaying accessibility scan results.
    """
    
    def __init__(self, max_nodes_per_violation: int = 5):
        """
        Initialize the HTML template generator.
        
        Args:
            max_nodes_per_violation: Maximum number of affected elements to show per violation
        """
        self.max_nodes_per_violation = max_nodes_per_violation
        
        # Initialize component generators
        self.rule_generator = RuleGenerator(max_nodes_per_violation)
        self.section_generator = SectionGenerator(self.rule_generator)
        self.overview_generator = OverviewGenerator()
    
    def generate_individual_report(self, violations: List[Dict[str, Any]], 
                                 passes: List[Dict[str, Any]],
                                 incomplete: List[Dict[str, Any]],
                                 inapplicable: List[Dict[str, Any]],
                                 scan_url: str,
                                 timestamp: str,
                                 include_passes: bool = False) -> str:
        """
        Generate HTML content for an individual accessibility report.
        
        Args:
            violations: List of accessibility violations
            passes: List of passed accessibility tests
            incomplete: List of incomplete accessibility tests
            inapplicable: List of inapplicable accessibility tests
            scan_url: URL that was scanned
            timestamp: When the scan was performed
            include_passes: Whether to include passed tests in the report
            
        Returns:
            Complete HTML content as string
        """
        # Generate sections using specialized generators
        violations_section = self.section_generator.generate_violations_section(violations)
        incomplete_section = self.section_generator.generate_incomplete_section(incomplete)
        passes_section = self.section_generator.generate_passes_section(passes) if include_passes else ""
        inapplicable_section = self.section_generator.generate_inapplicable_section(inapplicable) if include_passes else ""
        
        # Fill in the main template
        return BaseTemplates.get_individual_report_template().format(
            css_link=BaseTemplates.get_css_link(),
            javascript_code=BaseTemplates.get_javascript_code(),
            timestamp=timestamp,
            scan_url=scan_url,
            violations_count=len(violations),
            passes_count=len(passes),
            incomplete_count=len(incomplete),
            inapplicable_count=len(inapplicable),
            violations_section=violations_section,
            incomplete_section=incomplete_section,
            passes_section=passes_section,
            inapplicable_section=inapplicable_section
        )
    
    def generate_combined_report(self, all_reports: List[Dict[str, Any]], 
                               total_violations: int) -> str:
        """
        Generate HTML content for a combined accessibility report.
        
        Args:
            all_reports: List of report information dictionaries
            total_violations: Total number of violations across all reports
            
        Returns:
            Complete HTML content as string
        """
        # Calculate summary statistics
        total_passes = sum(report['passes_count'] for report in all_reports)
        total_incomplete = sum(report['incomplete_count'] for report in all_reports)
        total_inapplicable = sum(report['inapplicable_count'] for report in all_reports)
        
        # Generate report overview table using specialized generator
        overview_table = self.overview_generator.generate_report_overview_table(all_reports)
        
        return BaseTemplates.get_combined_report_template().format(
            css_link=BaseTemplates.get_css_link(),
            timestamp=datetime.now().strftime("%Y-%m-%d %H:%M:%S"),
            reports_count=len(all_reports),
            total_violations=total_violations,
            total_passes=total_passes,
            total_incomplete=total_incomplete,
            total_inapplicable=total_inapplicable,
            overview_table=overview_table
        )
    
    # Backward compatibility methods - delegating to utils
    def _escape_html(self, html_text: str) -> str:
        """Escape HTML for safe display. (Backward compatibility)"""
        return TextUtils.escape_html(html_text)
    
    def _escape_for_js(self, text: str) -> str:
        """Escape text for safe use in JavaScript strings. (Backward compatibility)"""
        return TextUtils.escape_for_js(text)
