"""
Selector utilities package for CSS and XPath handling.

This package contains utilities for converting between CSS selectors and XPath expressions.
"""

from .xpath_converter import XPathConverter
from .selector_alternatives import SelectorAlternatives

__all__ = ['XPathConverter', 'SelectorAlternatives']
