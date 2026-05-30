"""
Text Utilities Module

This module provides text processing utilities for HTML report generation.
"""

import json
import re
from typing import Dict, Any


class TextUtils:
    """Utilities for text processing and escaping."""
    
    @staticmethod
    def escape_html(html_text: str) -> str:
        """Escape HTML for safe display."""
        return html_text.replace('&', '&amp;').replace('<', '&lt;').replace('>', '&gt;').replace('"', '&quot;')
    
    @staticmethod
    def escape_for_js(text: str) -> str:
        """Escape text for safe use in JavaScript strings."""
        # Use JSON.stringify to properly escape the text for JavaScript
        return json.dumps(text)
    
    @staticmethod
    def extract_element_type(html_snippet: str) -> str:
        """Extract the element type from HTML snippet."""
        if not html_snippet:
            return 'Unknown'
        
        # Extract tag name
        match = re.match(r'<(\w+)', html_snippet.strip())
        if match:
            tag_name = match.group(1).upper()
            
            # Add more context for common form elements
            if tag_name == 'INPUT':
                type_match = re.search(r'type=["\'](\w+)["\']', html_snippet)
                if type_match:
                    return f'{tag_name} ({type_match.group(1).upper()})'
            elif tag_name in ['BUTTON', 'SELECT', 'TEXTAREA']:
                return tag_name
            elif tag_name == 'DIV':
                if 'role=' in html_snippet:
                    role_match = re.search(r'role=["\'](\w+)["\']', html_snippet)
                    if role_match:
                        return f'DIV (role="{role_match.group(1)}")'
                return 'DIV'
            
            return tag_name        
        return 'Unknown Element'
