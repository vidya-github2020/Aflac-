# 🔍 Accessibility Testing Framework

A modular accessibility testing library for Robot Framework that integrates axe-core with automated HTML/JSON report generation.

## 🚀 Quick Start

### Prerequisites
- Robot Framework with SeleniumLibrary
- Chrome/ChromeDriver
- Python virtual environment (`.venv`)

### Running Tests
```powershell
# Navigate to project root
cd "<project-root>/PAVE_RobotFrameworkTests"

# Run specific test
.\Accessibility\run_accessibility_test.bat "SimpleAccessibilityTest.robot"

# Run all tests  
.\Accessibility\run_accessibility_test.bat
```

### Key Features
- **Modular Architecture** - Clean, focused components
- **Multiple Formats** - JSON data + styled HTML reports
- **Severity Grouping** - Critical 🔴, Serious 🟠, Moderate 🟡, Minor 🔵 violations
- **Easy Integration** - Simple keywords for existing tests
- **Backwards Compatible** - Works with current workflows

### Viewing Reports
Reports are saved to `Accessibility/Results/`:
```powershell
start Accessibility\Results\<report_name>.html
```

## 🎯 Core Keywords

```robotframework
# Scan and return violation count
${violations}=    Check For Accessibility Issues

# Generate reports from last scan  
Generate Accessibility Report    filename.json

# Scan + report in one step (recommended)
Check And Generate Accessibility Report    page_scan.json

# Aggregate multiple scans
Generate Combined Accessibility Report    summary_report

# Configure output location and options
Set Results Directory    ${EXECDIR}/custom_reports
Configure Reporting Options    include_passes=${True}    max_nodes=${10}
```

## 📖 Usage Examples

### Basic Test
```robotframework
*** Settings ***
Library    SeleniumLibrary
Library    ../Lib/ExternalKeywords.py

*** Test Cases ***
Login Page Accessibility
    Open Browser    ${URL}    Chrome
    Check And Generate Accessibility Report    login_page
    [Teardown]    Close Browser
```

### Integration with Existing Tests
```robotframework
*** Test Cases ***
User Workflow with Accessibility
    Login As User
    Navigate To Dashboard
    Check And Generate Accessibility Report    dashboard_state
    Submit Form
    Check And Generate Accessibility Report    form_submitted
    Generate Combined Accessibility Report    workflow_summary
```

### Conditional Reporting
```robotframework
*** Test Cases ***
Smart Testing
    Open Browser    ${URL}    Chrome
    ${violations}=    Check For Accessibility Issues
    Run Keyword If    ${violations} > 0    Generate Accessibility Report    issues_found
    Should Be Equal As Numbers    ${violations}    0
```

## 📊 Report Types

### Individual Reports
- **JSON** (`*_accessibility.json`) - Raw scan data for programmatic processing
- **HTML** (`*_accessibility.html`) - Interactive reports with severity grouping, WCAG links, and modern styling

### Combined Reports  
- **HTML** (`combined_*.html`) - Aggregates multiple scans with overview table and statistics

## ⚙️ Configuration Options

```robotframework
# Reporting configuration
Configure Reporting Options    
...    include_passes=${True}          # Include passed rules
...    max_nodes=${10}                 # Limit elements per violation  
...    generate_json=${True}           # Create JSON reports
...    generate_html=${True}           # Create HTML reports

# Custom output directory
Set Results Directory    /custom/reports/path
```

## 🔧 Setup & Troubleshooting

### Manual Test Execution
```powershell
# Activate virtual environment
.\.venv\Scripts\Activate.ps1
robot Accessibility\TestCases\SimpleAccessibilityTest.robot
```

### Common Issues
- **Chrome process failed**: Check Chrome/ChromeDriver compatibility
- **Keyword not found**: Verify library import path: `Library    ../Lib/ExternalKeywords.py`
- **Virtual environment not found**: Ensure `.venv` exists in project root

### CI/CD Integration
```yaml
# Azure DevOps Pipeline
- task: PowerShell@2
  displayName: 'Run Accessibility Tests'
  inputs:
    targetType: 'inline'
    script: |
      cd $(Build.SourcesDirectory)
      .\Accessibility\run_accessibility_test.bat SimpleAccessibilityTest.robot
```

## 📚 Resources & Reference

### Links
- [WCAG 2.1 Guidelines](https://www.w3.org/WAI/WCAG21/quickref/)
- [axe-core Rules](https://dequeuniversity.com/rules/axe/)
- [Robot Framework Documentation](https://robotframework.org/robotframework/)

### Project Structure
```
Accessibility/
├── README.md                         # This documentation
├── run_accessibility_test.bat        # Test runner script
├── Lib/                             # Core library files
│   ├── __init__.py                  # Package initialization
│   ├── ExternalKeywords.py          # Main entry point
│   ├── AccessibilityScanner.py      # Core scanning logic
│   ├── AccessibilityTestingKeywords.py  # Robot Framework interface
│   ├── ReportGenerator.py           # Report generation
│   ├── HtmlTemplates.py             # HTML template orchestrator
│   ├── accessibility-report-styles.css  # External CSS styling
│   ├── generators/                  # Report section generators
│   ├── selector_utils/              # CSS/XPath conversion utilities
│   ├── templates/                   # HTML templates & static assets
│   └── utils/                       # Text processing & formatting utilities
├── TestCases/                       # Example test files
│   ├── CallInteractionSeacrhAccessibility.robot
│   ├── LoginAccessibility.robot
│   └── TestCasesFramework/
│       └── SimpleAccessibilityTest.robot
└── Results/                         # Generated reports (JSON/HTML)

```

---

## 🎯 Quick Reference

| Command | Purpose |
|---------|---------|
| `Check For Accessibility Issues` | Scan and return violation count |
| `Check And Generate Accessibility Report filename` | Scan + generate reports |
| `Generate Combined Accessibility Report` | Aggregate multiple scans |
| `.\Accessibility\run_accessibility_test.bat` | Run all tests |
| `.\Accessibility\run_accessibility_test.bat "TestName.robot"` | Run specific test |

**Need Help?** Check `TestCases/` for examples and `Results/` for sample reports.
