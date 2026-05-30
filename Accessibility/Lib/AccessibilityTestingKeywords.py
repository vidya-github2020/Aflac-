"""
Accessibility Testing Keywords for Robot Framework

This module provides the main Robot Framework interface for accessibility testing.
It serves as a facade that coordinates between the scanner, report generator, and other components.

This refactored version follows the project's naming conventions and provides
better separation of concerns, improved maintainability, and enhanced reusability.

Author: Accessibility Testing Team
Version: 2.0.0
Date: 2024-10-24
"""

import os
import logging
from typing import Dict, Any, Optional

try:
    # Try relative import first (when imported as package)
    from .AccessibilityScanner import AccessibilityScanner
    from .ReportGenerator import ReportGenerator
except ImportError:
    # Fall back to absolute import (when run directly)
    from AccessibilityScanner import AccessibilityScanner
    from ReportGenerator import ReportGenerator


class AccessibilityTestingKeywords:
    """
    Main Robot Framework library for accessibility testing.
    
    This class provides a clean interface that coordinates between the accessibility
    scanner, report generator, and other components. It follows Robot Framework
    conventions and provides keywords with consistent naming.
    
    Example Usage:
    | # Simple check with conditional reporting
    | ${violations}=    Check For Accessibility Issues
    | Run Keyword If    ${violations} > 0    Generate Accessibility Report    login_page
    |
    | # Always generate reports regardless of violations  
    | Check And Generate Accessibility Report    dashboard
    |
    | # Combine all reports into comprehensive overview
    | Generate Combined Accessibility Report    weekly_summary
    |
    | # Configure custom results directory
    | Set Results Directory    ${EXECDIR}/custom_reports
    """
    
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'
    ROBOT_LIBRARY_VERSION = '2.0.0'
    
    def __init__(self):
        """Initialize the accessibility testing library."""
        self._setup_logging()
        self.logger = logging.getLogger('AccessibilityTesting')
        
        # Initialize components
        self.scanner = AccessibilityScanner()
        self.report_generator = None  # Will be initialized with results directory
        
        # Set default results directory
        self._initialize_results_directory()
    
    # =============================================================================
    # PUBLIC KEYWORDS - Main Interface (following Robot Framework conventions)
    # =============================================================================
    
    def Check_For_Accessibility_Issues(self) -> int:
        """
        Run accessibility analysis and return violations count.
        
        This keyword performs a comprehensive accessibility scan using axe-core
        without generating reports. Use this for quick checks or conditional 
        reporting based on results.
        
        Returns:
            Number of accessibility violations found (0 = no violations)
            
        Example:
        | ${violations}=    Check For Accessibility Issues
        | Should Be Equal As Numbers    ${violations}    0    Page has accessibility violations!
        """
        try:
            self.logger.info("Starting accessibility scan...")
            
            # Perform the scan
            results = self.scanner.scan_page()
            
            # Analyze violations and provide user feedback
            analysis = self.scanner.analyze_violations(results)
            print(analysis['summary_message'])
            
            # Log breakdown by impact level
            if analysis['total_violations'] > 0:
                self._print_violation_breakdown(analysis['by_impact'])
            
            return analysis['total_violations']
            
        except Exception as e:
            error_msg = f"Error during accessibility check: {str(e)}"
            self.logger.error(error_msg)
            print(f"⚠️ {error_msg}")
            raise RuntimeError(error_msg) from e
    
    def Generate_Accessibility_Report(self, filename: str) -> int:
        """
        Generate accessibility reports (JSON and HTML) using the last scan results.
        
        This keyword must be called after 'Check For Accessibility Issues' as it uses
        the cached results from the last scan to avoid duplicate testing.
        
        Args:
            filename: Name for the report files (e.g., 'login_page' or 'login_page.json')
            
        Returns:
            Number of violations found in the report
            
        Example:
        | ${violations}=    Check For Accessibility Issues
        | Run Keyword If    ${violations} > 0    Generate Accessibility Report    login_page
        """
        results = self.scanner.get_last_scan_results()
        if not results:
            raise RuntimeError(
                "No accessibility scan results available. "
                "Run 'Check For Accessibility Issues' first."
            )
        
        try:
            # Get scan metadata
            metadata = self.scanner.get_last_scan_metadata()
            
            # Generate reports
            json_path, html_path = self.report_generator.generate_reports(
                results=results,
                filename=filename,
                scan_metadata=metadata
            )
            
            violations_count = len(results.get('violations', []))
            
            # Provide user feedback
            print(f"📊 Accessibility report generated:")
            if json_path:
                print(f"   JSON: {json_path}")
            if html_path:
                print(f"   HTML: {html_path}")
            print(f"   Violations: {violations_count}")
            if metadata.get('url'):
                print(f"   Scanned URL: {metadata['url']}")
            
            return violations_count
            
        except Exception as e:
            error_msg = f"Error generating accessibility report: {str(e)}"
            self.logger.error(error_msg)
            print(f"⚠️ {error_msg}")
            raise RuntimeError(error_msg) from e
    
    def Check_And_Generate_Accessibility_Report(self, filename: str) -> int:
        """
        Convenience keyword that combines checking and report generation.
        
        This keyword always generates reports regardless of violation count,
        making it suitable for comprehensive documentation of accessibility status.
        
        Args:
            filename: Name for the report files (e.g., 'dashboard')
            
        Returns:
            Number of violations found
            
        Example:
        | # Generate report regardless of violations
        | Check And Generate Accessibility Report    dashboard
        """
        violation_count = self.Check_For_Accessibility_Issues()
        self.Generate_Accessibility_Report(filename)
        return violation_count
    
    def Generate_Combined_Accessibility_Report(self, report_name: str = "combined_accessibility_report") -> int:
        """
        Combine all JSON accessibility reports from Results folder into one comprehensive HTML report.
        
        This creates an interactive overview showing results from all individual
        accessibility tests, with expandable sections, summary statistics, and
        detailed violation analysis.
        
        Args:
            report_name: Base name for the combined report (default: 'combined_accessibility_report')
            
        Returns:
            Total number of violations across all reports
            
        Example:
        | # Generate combined report from all existing reports
        | Generate Combined Accessibility Report
        | 
        | # Generate with custom name
        | Generate Combined Accessibility Report    weekly_accessibility_summary
        """
        try:
            html_path, total_violations = self.report_generator.generate_combined_report(report_name)
            
            print(f"📊 Combined accessibility report generated:")
            print(f"   File: {html_path}")
            print(f"   Total violations: {total_violations}")
            
            return total_violations
            
        except Exception as e:
            error_msg = f"Error generating combined report: {str(e)}"
            self.logger.error(error_msg)
            print(f"⚠️ {error_msg}")
            raise RuntimeError(error_msg) from e
    
    # =============================================================================
    # CONFIGURATION KEYWORDS
    # =============================================================================
    
    def Set_Results_Directory(self, directory_path: str) -> None:
        """
        Set custom directory for accessibility reports.
        
        Args:
            directory_path: Absolute path to the results directory
            
        Example:
        | Set Results Directory    ${EXECDIR}/custom_reports
        """
        results_dir = os.path.abspath(directory_path)
        os.makedirs(results_dir, exist_ok=True)
        
        # Reinitialize report generator with new directory
        self.report_generator = ReportGenerator(results_dir)
        
        print(f"📁 Results directory set to: {results_dir}")
        self.logger.info(f"Results directory changed to: {results_dir}")
    
    def Configure_Reporting_Options(self, include_passes: bool = False, 
                                  max_nodes: int = 5,
                                  generate_json: bool = True,
                                  generate_html: bool = True) -> None:
        """
        Configure reporting behavior and output options.
        
        Args:
            include_passes: Include passed tests in HTML reports (default: False)
            max_nodes: Maximum number of affected elements to show per violation (default: 5)
            generate_json: Generate JSON reports (default: True)
            generate_html: Generate HTML reports (default: True)
            
        Example:
        | Configure Reporting Options    include_passes=${True}    max_nodes=${10}
        """
        if self.report_generator:
            self.report_generator.configure_options(
                include_passes=include_passes,
                max_nodes=max_nodes,
                generate_json=generate_json,
                generate_html=generate_html
            )
        
        print(f"⚙️ Reporting options updated:")
        print(f"   Include passes: {include_passes}")
        print(f"   Max nodes per violation: {max_nodes}")
        print(f"   Generate JSON: {generate_json}")
        print(f"   Generate HTML: {generate_html}")
    
    def Get_Last_Scan_Summary(self) -> Dict[str, Any]:
        """
        Get summary information from the last accessibility scan.
        
        Returns:
            Dictionary containing scan summary with keys:
            - violations_count: Number of violations found
            - passes_count: Number of tests that passed
            - incomplete_count: Number of incomplete tests
            - inapplicable_count: Number of inapplicable tests
            - scan_url: URL that was scanned
            - scan_time: When the scan was performed
            
        Example:
        | ${summary}=    Get Last Scan Summary
        | Log    Scanned ${summary}[scan_url] and found ${summary}[violations_count] violations
        """
        results = self.scanner.get_last_scan_results()
        metadata = self.scanner.get_last_scan_metadata()
        
        if not results:
            return {
                'violations_count': 0,
                'passes_count': 0,
                'incomplete_count': 0,
                'inapplicable_count': 0,
                'scan_url': None,
                'scan_time': None
            }
        
        return {
            'violations_count': len(results.get('violations', [])),
            'passes_count': len(results.get('passes', [])),
            'incomplete_count': len(results.get('incomplete', [])),
            'inapplicable_count': len(results.get('inapplicable', [])),
            'scan_url': metadata.get('url'),
            'scan_time': metadata.get('timestamp')
        }
    
    # =============================================================================
    # INTERNAL HELPER METHODS
    # =============================================================================
    
    def _setup_logging(self) -> None:
        """Setup logging for the accessibility library."""
        logger = logging.getLogger('AccessibilityTesting')
        if not logger.handlers:
            handler = logging.StreamHandler()
            formatter = logging.Formatter(
                '%(asctime)s - %(name)s - %(levelname)s - %(message)s'
            )
            handler.setFormatter(formatter)
            logger.addHandler(handler)
            logger.setLevel(logging.INFO)
    
    def _initialize_results_directory(self) -> None:
        """Initialize the default results directory."""
        current_dir = os.path.dirname(os.path.abspath(__file__))
        results_dir = os.path.join(current_dir, '..', 'Results')
        os.makedirs(results_dir, exist_ok=True)
        
        self.report_generator = ReportGenerator(results_dir)
    
    def _print_violation_breakdown(self, impact_counts: Dict[str, int]) -> None:
        """Print a breakdown of violations by impact level."""
        if not impact_counts:
            return
        
        print("   Violation breakdown by impact level:")
        impact_icons = {
            'critical': '🔴',
            'serious': '🟠', 
            'moderate': '🟡',
            'minor': '🔵'
        }
        
        for impact in ['critical', 'serious', 'moderate', 'minor', 'unknown']:
            count = impact_counts.get(impact, 0)
            if count > 0:
                icon = impact_icons.get(impact, '⚪')
                print(f"   {icon} {impact.title()}: {count}")


# For backwards compatibility, create an alias with the original class name
ExternalKeywords = AccessibilityTestingKeywords
