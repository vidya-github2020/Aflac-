"""
Base HTML Templates Module

This module contains the core HTML templates and static assets for accessibility reports.
"""

import os
from typing import Dict, Any


class BaseTemplates:
    """Provides base HTML templates and static asset references."""
    
    @staticmethod
    def get_individual_report_template() -> str:
        """Get the base HTML template for individual reports."""
        return '''<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Accessibility Test Report</title>
    {css_link}
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>🔍 Accessibility Test Report</h1>
            <p>Generated on: {timestamp}</p>
            <p>Scanned URL: {scan_url}</p>
        </div>
        
        <div class="summary">
            <div class="summary-card violations">
                <h3>{violations_count}</h3>
                <p>Violations</p>
            </div>
            <div class="summary-card passes">
                <h3>{passes_count}</h3>
                <p>Passed</p>
            </div>
            <div class="summary-card incomplete">
                <h3>{incomplete_count}</h3>
                <p>Incomplete</p>
            </div>
            <div class="summary-card inapplicable">
                <h3>{inapplicable_count}</h3>
                <p>Inapplicable</p>
            </div>
        </div>
        
        {violations_section}
        {incomplete_section}
        {passes_section}
        {inapplicable_section}
    </div>
    
    <script>
        {javascript_code}
    </script>
</body>
</html>'''
    
    @staticmethod
    def get_combined_report_template() -> str:
        """Get the template for combined reports."""
        return '''<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Combined Accessibility Test Report</title>
    {css_link}
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>🔍 Combined Accessibility Test Report</h1>
            <p>Generated on: {timestamp}</p>
            <p>Reports analyzed: {reports_count}</p>
        </div>
        
        <div class="summary">
            <div class="summary-card violations">
                <h3>{total_violations}</h3>
                <p>Total Violations</p>
            </div>
            <div class="summary-card passes">
                <h3>{total_passes}</h3>
                <p>Total Passed</p>
            </div>
            <div class="summary-card incomplete">
                <h3>{total_incomplete}</h3>
                <p>Total Incomplete</p>
            </div>
            <div class="summary-card inapplicable">
                <h3>{total_inapplicable}</h3>
                <p>Total Inapplicable</p>
            </div>
        </div>
        
        <div class="report-overview">
            <h2>📋 Report Overview</h2>
            <table class="report-table">
                <thead>
                    <tr>
                        <th>Report Name</th>
                        <th>Status</th>
                        <th>Violations</th>
                        <th>Passed</th>
                        <th>Incomplete</th>
                        <th>Inapplicable</th>
                    </tr>
                </thead>
                <tbody>
                    {overview_table}
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>'''

    @staticmethod
    def get_css_link() -> str:
        """Get CSS link tag for external stylesheet."""
        # Use relative path from the HTML file to the CSS file
        # Both will be in the same directory structure (Results/ and Lib/)
        relative_css_path = os.path.join('..', 'Lib', 'accessibility-report-styles.css')
        return f'<link rel="stylesheet" type="text/css" href="{relative_css_path}">'
    
    @staticmethod
    def get_javascript_code() -> str:
        """Get JavaScript code for interactive elements."""
        return '''        function toggleSection(contentId) {
            var content = document.getElementById(contentId);
            var button = document.querySelector('[onclick*="' + contentId + '"]');
            var toggleIcon = button ? button.querySelector('.toggle-icon') : null;
            
            if (content.classList.contains('active')) {
                content.classList.remove('active');
                if (button) button.classList.remove('active');
                if (toggleIcon) toggleIcon.textContent = '▶';
            } else {
                content.classList.add('active');
                if (button) button.classList.add('active');
                if (toggleIcon) toggleIcon.textContent = '▼';
            }
        }
        
        // Enhanced smooth scrolling for jump links
        document.addEventListener('DOMContentLoaded', function() {
            var jumpLinks = document.querySelectorAll('.jump-link');
            jumpLinks.forEach(function(link) {
                link.addEventListener('click', function(e) {
                    e.preventDefault();
                    var targetId = this.getAttribute('href').substring(1);
                    var targetElement = document.getElementById(targetId);
                    if (targetElement) {
                        targetElement.scrollIntoView({
                            behavior: 'smooth',
                            block: 'start'
                        });
                        
                        // Highlight the target section briefly
                        targetElement.style.transition = 'all 0.3s ease';
                        targetElement.style.transform = 'scale(1.02)';
                        targetElement.style.boxShadow = '0 4px 20px rgba(0,123,255,0.3)';
                          setTimeout(function() {
                            targetElement.style.transform = '';
                            targetElement.style.boxShadow = '';
                        }, 500);
                    }
                });
            });
        }
        );
        '''
