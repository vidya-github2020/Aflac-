"""
HTML Formatter Module

This module provides HTML formatting utilities for better display and readability.
"""

from typing import Dict, Any


class HtmlFormatter:
    """Utilities for formatting HTML content for display."""
    
    @staticmethod
    def format_html_for_display(html_text: str, max_line_length: int = 120) -> str:
        """
        Format HTML text with line breaks for better readability.
        
        Args:
            html_text: The HTML string to format
            max_line_length: Maximum characters per line before wrapping
            
        Returns:
            Formatted HTML string with line breaks
        """
        if not html_text or len(html_text) <= max_line_length:
            return html_text
        
        # Split on attributes to create more readable lines
        formatted_html = html_text
        
        # Add line breaks after certain patterns to improve readability
        patterns_to_break_after = [
            '" ',  # After closing quotes followed by space
            ' data-',  # Before data attributes
            ' class=',  # Before class attributes
            ' id=',  # Before id attributes
            ' style=',  # Before style attributes
            ' aria-',  # Before ARIA attributes
            ' role=',  # Before role attributes
        ]
        
        lines = []
        current_line = ''
        i = 0
        
        while i < len(formatted_html):
            char = formatted_html[i]
            current_line += char
            
            # Check if we should break the line
            should_break = False
            
            # Check for pattern matches
            for pattern in patterns_to_break_after:
                if (len(current_line) > 60 and  # Only break after reasonable length
                    current_line.endswith(pattern) and 
                    len(current_line) > max_line_length * 0.5):  # At least half max length
                    should_break = True
                    break
            
            # Force break if line gets too long
            if len(current_line) > max_line_length:
                # Look for next space or quote to break at
                for j in range(i + 1, min(i + 20, len(formatted_html))):
                    if formatted_html[j] in [' ', '"', "'", '>']:
                        # Add remaining characters until break point
                        current_line += formatted_html[i+1:j+1]
                        i = j
                        should_break = True
                        break
                else:
                    should_break = True
            
            if should_break:
                lines.append(current_line.rstrip())
                current_line = '    '  # Indent continuation lines
                
            i += 1
        
        # Add remaining content
        if current_line.strip():
            lines.append(current_line.rstrip())
        
        return '\n'.join(lines)
    
    @staticmethod
    def smart_truncate_html(html_text: str, max_length: int = 400) -> str:
        """
        Smartly truncate HTML text without breaking attributes.
        
        Args:
            html_text: The HTML string to truncate
            max_length: Maximum length before truncation
            
        Returns:
            Truncated HTML string with proper ending
        """
        if not html_text or len(html_text) <= max_length:
            return html_text
        
        # Start with the basic truncation
        truncated = html_text[:max_length]
        
        # Check if we're inside an attribute by parsing quote state
        in_double_quotes = False
        in_single_quotes = False
        safe_cut_pos = -1
        
        for i, char in enumerate(truncated):
            if char == '"' and not in_single_quotes:
                in_double_quotes = not in_double_quotes
            elif char == "'" and not in_double_quotes:
                in_single_quotes = not in_single_quotes
            
            # Mark safe positions (not inside quotes)
            if not in_double_quotes and not in_single_quotes:
                if char in [' ', '>', '\t', '\n']:
                    safe_cut_pos = i + 1
        
        # If we're inside quotes or no safe position found, use the safe position
        if (in_double_quotes or in_single_quotes) and safe_cut_pos > 0:
            truncated = truncated[:safe_cut_pos].rstrip()
        else:
            # Find a good word boundary to avoid cutting mid-word
            last_space = truncated.rfind(' ')
            if last_space > max_length * 0.7:  # Only if we don't lose too much content
                truncated = truncated[:last_space]
        
        # Clean up and add ellipsis
        truncated = truncated.rstrip()
        if truncated and not truncated.endswith('...'):
            if truncated.endswith('>'):
                truncated += '...'
            elif '=' in truncated.split()[-1] if truncated.split() else False:
                # Last part looks like an incomplete attribute
                truncated += '="..."'
            else:
                truncated += '...'
            
        return truncated
