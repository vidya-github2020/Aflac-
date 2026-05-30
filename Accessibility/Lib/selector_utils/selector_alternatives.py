"""
Selector Alternatives Module

This module provides utilities for generating alternative selectors for HTML elements.
"""

import re
from typing import List
from .xpath_converter import XPathConverter


class SelectorAlternatives:
    """Utilities for generating alternative CSS and XPath selectors."""
    
    @staticmethod
    def generate_xpath_alternatives(css_selector: str, html_snippet: str) -> List[str]:
        """
        Generate multiple XPath alternatives for a given CSS selector.
        
        Args:
            css_selector: Original CSS selector
            html_snippet: HTML snippet of the element
            
        Returns:
            List of alternative XPath expressions
        """
        alternatives = []
        
        # Add the basic conversion
        basic_xpath = XPathConverter.css_to_relative_xpath(css_selector)
        if basic_xpath != 'Unknown':
            alternatives.append(basic_xpath)
        
        # Extract attributes from HTML for additional alternatives
        try:
            # Extract id attribute
            id_match = re.search(r'id=["\']([^"\']+)["\']', html_snippet)
            if id_match:
                id_value = id_match.group(1)
                alternatives.append(f'//*[@id="{id_value}"]')
            
            # Extract class attribute
            class_match = re.search(r'class=["\']([^"\']+)["\']', html_snippet)
            if class_match:
                class_value = class_match.group(1)
                # Use first class for contains
                first_class = class_value.split()[0] if class_value.split() else class_value
                alternatives.append(f'//*[contains(@class,"{first_class}")]')
            
            # Extract data-testid
            testid_match = re.search(r'data-testid=["\']([^"\']+)["\']', html_snippet)
            if testid_match:
                testid_value = testid_match.group(1)
                alternatives.append(f'//*[@data-testid="{testid_value}"]')
            
            # Extract data-test-id (another common pattern)
            test_id_match = re.search(r'data-test-id=["\']([^"\']+)["\']', html_snippet)
            if test_id_match:
                test_id_value = test_id_match.group(1)
                alternatives.append(f'//*[@data-test-id="{test_id_value}"]')
            
            # Extract tag name and create tag-based XPath
            tag_match = re.match(r'<(\w+)', html_snippet)
            if tag_match:
                tag_name = tag_match.group(1).lower()
                
                # Extract text content for text-based XPath
                text_match = re.search(r'>([^<]+)</', html_snippet)
                if text_match:
                    text_content = text_match.group(1).strip()
                    if text_content and len(text_content) < 50:  # Reasonable text length
                        alternatives.append(f'//{tag_name}[contains(text(),"{text_content}")]')
                
                # Extract aria-label
                aria_label_match = re.search(r'aria-label=["\']([^"\']+)["\']', html_snippet)
                if aria_label_match:
                    aria_label = aria_label_match.group(1)
                    alternatives.append(f'//{tag_name}[@aria-label="{aria_label}"]')
                
                # Extract title attribute
                title_match = re.search(r'title=["\']([^"\']+)["\']', html_snippet)
                if title_match:
                    title = title_match.group(1)
                    alternatives.append(f'//{tag_name}[@title="{title}"]')
        
        except Exception:
            pass
        
        # Remove duplicates while preserving order
        seen = set()
        unique_alternatives = []
        for alt in alternatives:
            if alt not in seen:
                seen.add(alt)
                unique_alternatives.append(alt)
        
        return unique_alternatives[:5]  # Limit to 5 alternatives to avoid clutter
