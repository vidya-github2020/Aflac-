"""
Accessibility Testing Library Package

This package provides comprehensive accessibility testing capabilities for Robot Framework
using axe-core. The library is designed with a modular architecture that separates concerns
and provides better maintainability and reusability.

Components:
- AccessibilityScanner: Core scanning functionality using axe-core
- ReportGenerator: Handles creation of JSON and HTML reports
- HtmlTemplates: Manages HTML template generation and styling
- AccessibilityTestingKeywords: Main Robot Framework interface

Author: Accessibility Testing Team
Version: 2.0.0
Date: 2024-10-24
"""

from .AccessibilityTestingKeywords import AccessibilityTestingKeywords, ExternalKeywords

__version__ = "2.0.0"
__author__ = "Accessibility Testing Team"

# Make the main class available at package level for easy import
__all__ = ['AccessibilityTestingKeywords', 'ExternalKeywords']
