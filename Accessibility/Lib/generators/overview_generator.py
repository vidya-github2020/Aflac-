"""
Overview Generator Module

This module generates overview tables and summary sections for accessibility reports.
"""

from typing import Dict, List, Any


class OverviewGenerator:
    """Generates overview tables and summary sections for reports."""
    
    @staticmethod
    def generate_report_overview_table(all_reports: List[Dict[str, Any]]) -> str:
        """Generate overview table for combined reports."""
        html = ""
        
        for report in all_reports:
            status_class = "status-fail" if report['violations_count'] > 0 else "status-pass"
            status_text = "FAIL" if report['violations_count'] > 0 else "PASS"
            
            if report['incomplete_count'] > 0 and report['violations_count'] == 0:
                status_class = "status-warning"
                status_text = "WARNING"
            
            html += f'''
                <tr>
                    <td><strong>{report['display_name']}</strong></td>
                    <td><span class="status-badge {status_class}">{status_text}</span></td>
                    <td>{report['violations_count']}</td>
                    <td>{report['passes_count']}</td>
                    <td>{report['incomplete_count']}</td>
                    <td>{report['inapplicable_count']}</td>
                </tr>'''
        
        return html
