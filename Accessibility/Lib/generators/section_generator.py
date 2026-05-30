"""
Section Generator Module

This module generates major sections of accessibility reports (violations, passes, etc.).
"""

from typing import Dict, List, Any
from .rule_generator import RuleGenerator


class SectionGenerator:
    """Generates major sections of accessibility reports."""
    
    def __init__(self, rule_generator: RuleGenerator):
        """Initialize with a rule generator instance."""
        self.rule_generator = rule_generator
    
    def generate_violations_section(self, violations: List[Dict[str, Any]]) -> str:
        """Generate HTML section for violations grouped by impact level."""
        if not violations:
            return '''
        <div class="section">
            <div class="section-header">
                <h2>✅ No Violations Found</h2>
            </div>
            <div class="section-content">
                <div class="no-issues">
                    🎉 Congratulations! No accessibility violations were detected on this page.
                </div>
            </div>
        </div>'''
        
        # Group violations by impact level
        grouped_violations = self._group_violations_by_impact(violations)
        
        html = f'''
        <div class="section">
            <div class="section-header">
                <h2>🚨 Accessibility Violations ({len(violations)} total)</h2>
            </div>
            <div class="section-content">
                <div class="violations-summary">
                    <p><strong>Violations found by severity level:</strong></p>
                    <ul class="severity-summary">'''
        
        # Add severity summary
        impact_icons = {'critical': '🔴', 'serious': '🟠', 'moderate': '🟡', 'minor': '🔵'}
        impact_labels = {'critical': 'Critical', 'serious': 'Serious', 'moderate': 'Moderate', 'minor': 'Minor'}
        
        for impact in ['critical', 'serious', 'moderate', 'minor']:
            if impact in grouped_violations:
                count = len(grouped_violations[impact])
                icon = impact_icons.get(impact, '⚪')
                label = impact_labels.get(impact, impact.title())
                html += f'''
                        <li class="severity-item impact-{impact}">
                            {icon} <strong>{label}:</strong> {count} violation(s)
                            <a href="#violations-{impact}" class="jump-link">Jump to section →</a>
                        </li>'''
        
        html += '''
                    </ul>
                </div>'''
        
        # Generate sections for each impact level
        for impact in ['critical', 'serious', 'moderate', 'minor']:
            if impact in grouped_violations:
                html += self._generate_impact_section(impact, grouped_violations[impact], impact_icons.get(impact, '⚪'))
        
        html += '''
            </div>
        </div>'''
        
        return html
    
    def generate_incomplete_section(self, incomplete: List[Dict[str, Any]]) -> str:
        """Generate HTML section for incomplete tests."""
        if not incomplete:
            return ""
        
        html = f'''
        <div class="section">
            <div class="section-header">
                <h2>⚠️ Incomplete Tests ({len(incomplete)})</h2>
            </div>
            <div class="section-content">
                <p class="info-note">
                    <strong>Note:</strong> These tests require manual verification to determine if they pass or fail.
                </p>'''
        
        for item in incomplete:
            html += self.rule_generator.generate_rule_html(item, "incomplete")
        
        html += '''
            </div>
        </div>'''
        
        return html
    
    def generate_passes_section(self, passes: List[Dict[str, Any]]) -> str:
        """Generate HTML section for passed tests."""
        if not passes:
            return ""
        
        return f'''
        <div class="section">
            <div class="section-header">
                <h2>✅ Passed Tests ({len(passes)})</h2>
            </div>
            <div class="section-content">
                <button class="collapsible" onclick="toggleSection('passes-content')">
                    Show/Hide Passed Tests Details
                </button>
                <div id="passes-content" class="content">
                    <p class="success-note">
                        These accessibility tests passed successfully.
                    </p>
                    {''.join(self.rule_generator.generate_rule_html(rule, "pass") for rule in passes)}
                </div>
            </div>
        </div>'''
    
    def generate_inapplicable_section(self, inapplicable: List[Dict[str, Any]]) -> str:
        """Generate HTML section for inapplicable tests."""
        if not inapplicable:
            return ""
        
        return f'''
        <div class="section">
            <div class="section-header">
                <h2>ℹ️ Inapplicable Tests ({len(inapplicable)})</h2>
            </div>
            <div class="section-content">
                <button class="collapsible" onclick="toggleSection('inapplicable-content')">
                    Show/Hide Inapplicable Tests Details
                </button>
                <div id="inapplicable-content" class="content">
                    <p class="info-note">
                        These tests are not applicable to the current page content.
                    </p>
                    {''.join(self.rule_generator.generate_rule_html(rule, "inapplicable") for rule in inapplicable)}
                </div>
            </div>
        </div>'''
    
    def _group_violations_by_impact(self, violations: List[Dict[str, Any]]) -> Dict[str, List[Dict[str, Any]]]:
        """Group violations by their impact level."""
        grouped = {}
        for violation in violations:
            impact = violation.get('impact', 'unknown')
            if impact not in grouped:
                grouped[impact] = []
            grouped[impact].append(violation)
        return grouped
    
    def _generate_impact_section(self, impact: str, violations: List[Dict[str, Any]], icon: str) -> str:
        """Generate HTML section for violations of a specific impact level with collapsible functionality."""
        impact_descriptions = {
            'critical': 'Critical issues that must be fixed immediately. These violations prevent users from accessing or using key functionality.',
            'serious': 'Serious issues that significantly impact usability. These should be prioritized for fixing.',
            'moderate': 'Moderate issues that may cause difficulty for some users. Should be addressed when possible.',
            'minor': 'Minor issues that have minimal impact but should be cleaned up for best practices.'
        }
        
        description = impact_descriptions.get(impact, f'{impact.title()} accessibility issues.')
        content_id = f'impact-{impact}-content'
        
        # Critical and serious are expanded by default, others are collapsed
        is_expanded = impact in ['critical', 'serious']
        expanded_class = 'active' if is_expanded else ''
        button_class = 'active' if is_expanded else ''
        
        html = f'''
            <div class="impact-section" id="violations-{impact}">
                <div class="impact-header impact-{impact}">
                    <button class="impact-toggle {button_class}" onclick="toggleSection('{content_id}')">
                        <span class="toggle-icon">{'▼' if is_expanded else '▶'}</span>
                        <h3>{icon} {impact.title()} Issues ({len(violations)})</h3>
                    </button>
                    <p class="impact-description">{description}</p>
                </div>
                <div id="{content_id}" class="impact-violations-content {expanded_class}">
                    <div class="impact-violations">'''
        
        for violation in violations:
            html += self.rule_generator.generate_enhanced_rule_html(violation, impact)
        
        html += '''
                    </div>
                </div>
            </div>'''
        
        return html
