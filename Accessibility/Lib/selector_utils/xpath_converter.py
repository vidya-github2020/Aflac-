"""
XPath Converter Module

This module provides utilities for converting CSS selectors to XPath expressions.
"""

import re
from typing import Dict, Any


class XPathConverter:
    """Utilities for converting CSS selectors to XPath expressions."""
    
    @staticmethod
    def css_to_relative_xpath(css_selector: str) -> str:
        """
        Convert CSS selector to a relative XPath expression.
        
        Args:
            css_selector: CSS selector string to convert
            
        Returns:
            Relative XPath expression equivalent
        """
        if not css_selector or css_selector == 'Unknown':
            return 'Unknown'
        
        try:
            # Remove any leading xpath: prefix if present
            if css_selector.startswith('xpath:'):
                return css_selector[6:]  # Return the xpath part without the prefix
            
            xpath = css_selector.strip()
            
            # Handle data-testid attributes specifically (most common pattern)
            if 'data-testid=' in xpath:
                match = re.search(r'data-testid=["\']([^"\']+)["\']', xpath)
                if match:
                    testid = match.group(1)
                    # Check if it has a tag prefix
                    tag_match = re.match(r'^(\w+)\[', xpath)
                    if tag_match:
                        tag = tag_match.group(1)
                        return f'//{tag}[@data-testid="{testid}"]'
                    return f'//*[@data-testid="{testid}"]'
            
            # Handle data-test-id attributes (common in the codebase)
            if 'data-test-id=' in xpath:
                match = re.search(r'data-test-id=["\']([^"\']+)["\']', xpath)
                if match:
                    test_id = match.group(1)
                    # Check if it has a tag prefix
                    tag_match = re.match(r'^(\w+)\[', xpath)
                    if tag_match:
                        tag = tag_match.group(1)
                        return f'//{tag}[@data-test-id="{test_id}"]'
                    return f'//*[@data-test-id="{test_id}"]'
            
            # Handle button with data-testid (very common pattern)
            if xpath.startswith('button[data-testid='):
                match = re.search(r'button\[data-testid=["\']([^"\']+)["\']', xpath)
                if match:
                    testid = match.group(1)
                    return f'//button[@data-testid="{testid}"]'
            
            # Handle input elements with type attributes
            if xpath.startswith('input[type='):
                match = re.search(r'input\[type=["\']([^"\']+)["\']\]', xpath)
                if match:
                    input_type = match.group(1)
                    return f'//input[@type="{input_type}"]'
            
            # Handle general attribute selectors
            if re.match(r'^\w+\[[^=]+=["\'][^"\']+["\']\]$', xpath):
                match = re.match(r'^(\w+)\[([^=]+)=["\']([^"\']+)["\']\]$', xpath)
                if match:
                    tag, attr, value = match.groups()
                    return f'//{tag}[@{attr}="{value}"]'
            
            # Handle standalone attribute selectors
            if xpath.startswith('[') and xpath.endswith(']'):
                attr_match = re.match(r'^\[([^=]+)=["\']([^"\']+)["\']\]$', xpath)
                if attr_match:
                    attr, value = attr_match.groups()
                    return f'//*[@{attr}="{value}"]'
            
            # Handle ID selectors
            if '#' in xpath and not xpath.startswith('#'):
                parts = xpath.split('#', 1)
                if len(parts) == 2:
                    tag, id_value = parts
                    return f'//{tag}[@id="{id_value}"]'
            elif xpath.startswith('#'):
                id_value = xpath[1:]
                return f'//*[@id="{id_value}"]'
            
            # Handle class selectors
            if '.' in xpath and not xpath.startswith('.'):
                parts = xpath.split('.', 1)
                if len(parts) == 2:
                    tag, class_name = parts
                    return f'//{tag}[contains(@class,"{class_name}")]'
            elif xpath.startswith('.'):
                class_name = xpath[1:]
                return f'//*[contains(@class,"{class_name}")]'
            
            # Handle child combinators
            if ' > ' in xpath:
                parts = xpath.split(' > ')
                converted_parts = []
                for part in parts:
                    part = part.strip()
                    if part:
                        # Convert each part and remove leading // if present
                        converted_part = XPathConverter.css_to_relative_xpath(part)
                        if converted_part.startswith('//'):
                            converted_part = converted_part[2:]
                        converted_parts.append(converted_part)
                return '//' + '/'.join(converted_parts)
            
            # Handle descendant combinators
            if ' ' in xpath and not xpath.startswith('//'):
                parts = [p.strip() for p in xpath.split(' ') if p.strip()]
                if len(parts) > 1:
                    converted_parts = []
                    for part in parts:
                        # Convert each part and remove leading // if present
                        converted_part = XPathConverter.css_to_relative_xpath(part)
                        if converted_part.startswith('//'):
                            converted_part = converted_part[2:]
                        converted_parts.append(converted_part)
                    return '//' + '//'.join(converted_parts)
            
            # Handle nth-child selectors
            if ':nth-child(' in xpath:
                match = re.search(r'([^:]+):nth-child\((\d+)\)', xpath)
                if match:
                    element, position = match.groups()
                    return f'//{element}[{position}]'
            
            # Basic tag selector
            if xpath.isalpha():
                return f'//{xpath}'
            
            # If no conversion was made and it doesn't start with //, make it relative
            if not xpath.startswith('//') and not xpath.startswith('/'):
                return f'//{xpath}'
                
            return xpath
            
        except Exception:
            # If conversion fails, return a generic relative XPath
            return f'//*[contains(@class,"{css_selector}") or contains(@id,"{css_selector}")]'
