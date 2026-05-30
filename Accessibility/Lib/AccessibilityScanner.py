"""
Accessibility Scanner Module

This module handles the core accessibility scanning functionality using axe-core.
It provides a clean interface for running accessibility tests and retrieving results.

Author: Accessibility Testing Team
Version: 2.0.0
Date: 2024-10-24
"""

import logging
from datetime import datetime
from typing import Dict, Any, Optional

from selenium.webdriver.remote.webdriver import WebDriver
from robot.libraries.BuiltIn import BuiltIn
from axe_selenium_python import Axe


class AccessibilityScanner:
    """
    Core accessibility scanning functionality using axe-core.
    
    This class handles the interaction with the axe-core library and WebDriver
    to perform accessibility scans on web pages.
    """
    
    def __init__(self):
        """Initialize the accessibility scanner."""
        self.logger = logging.getLogger('AccessibilityScanner')
        self._last_scan_results: Optional[Dict[str, Any]] = None
        self._last_scan_url: Optional[str] = None
        self._last_scan_time: Optional[datetime] = None
    
    def scan_page(self, webdriver: Optional[WebDriver] = None) -> Dict[str, Any]:
        """
        Perform accessibility scan on the current page.
        
        Args:
            webdriver: WebDriver instance to use. If None, gets from SeleniumLibrary.
            
        Returns:
            Dictionary containing axe-core scan results
            
        Raises:
            RuntimeError: If no WebDriver is available or scan fails
        """
        try:
            # Get WebDriver instance
            if webdriver is None:
                webdriver = self._get_selenium_webdriver()
            
            if not webdriver:
                raise RuntimeError("No active WebDriver found. Please open a browser first.")
            
            # Get current URL for tracking
            current_url = webdriver.current_url
            self.logger.info(f"Starting accessibility scan of: {current_url}")
            
            # Perform axe scan
            axe = Axe(webdriver)
            axe.inject()
            results = axe.run()
            
            # Store scan metadata
            self._last_scan_results = results
            self._last_scan_url = current_url
            self._last_scan_time = datetime.now()
            
            # Log results summary
            violations_count = len(results.get('violations', []))
            self.logger.info(f"Accessibility scan completed. Violations found: {violations_count}")
            
            return results
            
        except Exception as e:
            error_msg = f"Error during accessibility scan: {str(e)}"
            self.logger.error(error_msg)
            raise RuntimeError(error_msg) from e
    
    def get_last_scan_results(self) -> Optional[Dict[str, Any]]:
        """Get the results from the last accessibility scan."""
        return self._last_scan_results
    
    def get_last_scan_metadata(self) -> Dict[str, Any]:
        """Get metadata from the last accessibility scan."""
        return {
            'url': self._last_scan_url,
            'timestamp': self._last_scan_time,
            'has_results': self._last_scan_results is not None
        }
    
    def analyze_violations(self, results: Optional[Dict[str, Any]] = None) -> Dict[str, Any]:
        """
        Analyze accessibility violations and provide summary statistics.
        
        Args:
            results: Scan results to analyze. If None, uses last scan results.
            
        Returns:
            Dictionary containing violation analysis
        """
        if results is None:
            results = self._last_scan_results
            
        if not results:
            return {
                'total_violations': 0,
                'by_impact': {},
                'by_category': {},
                'summary_message': 'No scan results available'
            }
        
        violations = results.get('violations', [])
        
        # Group by impact level
        by_impact = {}
        by_category = {}
        
        for violation in violations:
            # Count by impact
            impact = violation.get('impact', 'unknown')
            by_impact[impact] = by_impact.get(impact, 0) + 1
            
            # Count by category (tags)
            for tag in violation.get('tags', []):
                by_category[tag] = by_category.get(tag, 0) + 1
        
        # Generate summary message
        total_violations = len(violations)
        if total_violations == 0:
            summary_message = "✅ No accessibility violations found"
        else:
            critical = by_impact.get('critical', 0)
            serious = by_impact.get('serious', 0)
            summary_message = f"❌ {total_violations} violations found"
            if critical > 0:
                summary_message += f" ({critical} critical"
                if serious > 0:
                    summary_message += f", {serious} serious)"
                else:
                    summary_message += ")"
            elif serious > 0:
                summary_message += f" ({serious} serious)"
        
        return {
            'total_violations': total_violations,
            'by_impact': by_impact,
            'by_category': by_category,
            'summary_message': summary_message,
            'scan_url': self._last_scan_url,
            'scan_time': self._last_scan_time
        }
    
    def _get_selenium_webdriver(self) -> WebDriver:
        """Get WebDriver instance from SeleniumLibrary."""
        try:
            seleniumlib = BuiltIn().get_library_instance('SeleniumLibrary')
            return seleniumlib.driver
        except Exception as e:
            raise RuntimeError(f"Failed to get SeleniumLibrary WebDriver: {str(e)}") from e
