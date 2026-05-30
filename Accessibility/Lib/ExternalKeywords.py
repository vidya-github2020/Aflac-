"""
ExternalKeywords - Accessibility Testing Library for Robot Framework

This module provides the main ExternalKeywords class for accessibility testing using axe-core.
It uses a modular architecture internally while maintaining backwards compatibility.

Author: Accessibility Testing Team  
Version: 2.0.0
Date: 2024-10-24
"""

# Import the modular implementation
try:
    # Try relative import first (when imported as package)
    from .AccessibilityTestingKeywords import AccessibilityTestingKeywords
except ImportError:
    # Fall back to absolute import (when run directly)
    from AccessibilityTestingKeywords import AccessibilityTestingKeywords

# Export the class with the expected name for backwards compatibility
class ExternalKeywords(AccessibilityTestingKeywords):
    """
    Main accessibility testing class for Robot Framework.
    
    This class maintains backwards compatibility while using the new modular 
    architecture internally. All functionality has been enhanced and organized 
    into separate, reusable components.
    
    Key Features:
    - Comprehensive accessibility scanning with axe-core
    - Multiple report formats (JSON, HTML, combined)
    - Enhanced error handling and logging
    - Configurable reporting options
    - Interactive HTML reports with modern styling
    - Modular, maintainable architecture
    
    Example Usage:
    | Library    ExternalKeywords
    | ${violations}=    Check For Accessibility Issues  
    | Generate Accessibility Report    test_page
    | Generate Combined Accessibility Report
    """
    pass
