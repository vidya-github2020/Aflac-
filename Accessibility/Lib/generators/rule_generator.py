"""
Rule Generator Module

This module generates HTML for individual accessibility rules and their affected elements.
"""

from typing import Dict, List, Any
import sys
import os
sys.path.append(os.path.dirname(os.path.dirname(__file__)))
from utils import HtmlFormatter, TextUtils
from selector_utils import SelectorAlternatives


class RuleGenerator:
    """Generates HTML for accessibility rules and their affected elements."""
    
    def __init__(self, max_nodes_per_violation: int = 5):
        """Initialize with configuration options."""
        self.max_nodes_per_violation = max_nodes_per_violation
    
    def generate_rule_html(self, rule: Dict[str, Any], rule_type: str) -> str:
        """Generate HTML for a single accessibility rule."""
        impact = rule.get('impact', '')
        impact_class = f"impact-{impact}" if impact else ""
        
        html = f'''
        <div class="rule {rule_type}">
            <div class="rule-title">{rule.get('id', 'Unknown')}: {rule.get('help', 'No help available')}</div>'''
        
        if impact:
            html += f'''
            <span class="impact {impact_class}">{impact}</span>'''
        
        html += f'''
            <div class="rule-description">{rule.get('description', 'No description available')}</div>
            <div class="rule-help">
                <a href="{rule.get('helpUrl', '#')}" target="_blank">📖 Learn more about this rule →</a>
            </div>'''
        
        # Add tags
        tags = rule.get('tags', [])
        if tags:
            html += '''
            <div class="tags">'''
            for tag in tags:
                html += f'''
                <span class="tag">{tag}</span>'''
            html += '''
            </div>'''
        
        # Add affected elements for violations and incomplete tests
        nodes = rule.get('nodes', [])
        if nodes and rule_type in ['violation', 'incomplete']:
            html += self._generate_nodes_html(nodes)
        
        html += '''
        </div>'''
        
        return html
    
    def generate_enhanced_rule_html(self, rule: Dict[str, Any], impact: str) -> str:
        """Generate enhanced HTML for a single accessibility rule with better element identification."""
        rule_id = rule.get('id', 'unknown-rule')
        help_text = rule.get('help', 'No help available')
        description = rule.get('description', 'No description available')
        help_url = rule.get('helpUrl', '#')
        
        html = f'''
            <div class="enhanced-rule impact-{impact}">
                <div class="rule-header">
                    <div class="rule-id-badge">{rule_id}</div>
                    <div class="rule-title-main">{help_text}</div>
                </div>
                <div class="rule-description-enhanced">{description}</div>
                <div class="rule-actions">
                    <a href="{help_url}" target="_blank" class="help-link">📖 View Documentation</a>
                </div>'''
        
        # Add WCAG guidelines if available
        tags = rule.get('tags', [])
        wcag_tags = [tag for tag in tags if 'wcag' in tag.lower()]
        if wcag_tags:
            html += '''
                <div class="wcag-guidelines">
                    <strong>WCAG Guidelines:</strong>'''
            for tag in wcag_tags:
                html += f' <span class="wcag-tag">{tag.upper()}</span>'
            html += '''
                </div>'''
        
        # Enhanced nodes section
        nodes = rule.get('nodes', [])
        if nodes:
            html += self._generate_enhanced_nodes_html(nodes, rule_id)
        
        html += '''
            </div>'''
        
        return html
    
    def _generate_nodes_html(self, nodes: List[Dict[str, Any]]) -> str:
        """Generate HTML for affected elements (nodes)."""
        html = f'''
            <div class="nodes">
                <strong>Affected Elements ({len(nodes)}):</strong>'''
        
        # Limit number of nodes displayed
        max_nodes = min(len(nodes), self.max_nodes_per_violation)
        for i, node in enumerate(nodes[:max_nodes]):
            target = ', '.join(node.get('target', ['Unknown target']))
            node_html = node.get('html', '')
            if len(node_html) > 200:
                node_html = node_html[:200] + '...'
            
            html += f'''
                <div class="node">
                    <div><strong>Element {i+1}:</strong> <span class="node-target">{target}</span></div>
                    <div class="node-html">{node_html}</div>
                </div>'''
        
        if len(nodes) > max_nodes:
            html += f'''
                <p><em>... and {len(nodes) - max_nodes} more elements</em></p>'''
        
        html += '''
            </div>'''
        
        return html
    
    def _generate_enhanced_nodes_html(self, nodes: List[Dict[str, Any]], rule_id: str) -> str:
        """Generate enhanced HTML for affected elements with better identification."""
        html = f'''
            <div class="enhanced-nodes">
                <div class="nodes-header">
                    <h4>🎯 Affected Elements ({len(nodes)} total)</h4>
                </div>
                <div class="nodes-grid">'''
        
        # Show all nodes, but in a more organized way
        for i, node in enumerate(nodes):
            targets = node.get('target', ['Unknown'])
            node_html = node.get('html', 'No HTML available')
            
            # Generate more readable element path
            primary_selector = targets[0] if targets else 'Unknown'
            element_type = TextUtils.extract_element_type(node_html)
            # Format HTML with line breaks for better readability
            display_html = HtmlFormatter.format_html_for_display(node_html)
            
            html += f'''
                <div class="enhanced-node">
                    <div class="node-header">
                        <span class="node-number">#{i+1}</span>
                        <span class="element-type">{element_type}</span>
                    </div>
                    <div class="node-details">
                        <div class="selector-section">
                            <strong>CSS Selector:</strong>
                            <code class="css-selector">{primary_selector}</code>
                        </div>'''
            
            # Generate and show XPath alternatives
            xpath_alternatives = SelectorAlternatives.generate_xpath_alternatives(primary_selector, node_html)
            if xpath_alternatives:
                html += '''
                        <div class="xpath-alternatives">
                            <strong>XPath Selectors:</strong>
                            <ul class="xpath-list">'''
                for xpath in xpath_alternatives:
                    html += f'''
                                <li>
                                    <code class="xpath-selector">{TextUtils.escape_html(xpath)}</code>
                                </li>'''
                html += '''
                            </ul>
                        </div>'''
            
            # Show all alternative CSS selectors if multiple exist
            if len(targets) > 1:
                html += '''
                        <div class="alternative-selectors">
                            <strong>Alternative CSS Selectors:</strong>
                            <ul class="selector-list">'''
                for target in targets[1:]:
                    html += f'''
                                <li><code>{target}</code></li>'''
                html += '''
                            </ul>
                        </div>'''
            
            # Show HTML element content
            html += f'''
                        <div class="element-html">
                            <strong>HTML Element:</strong>
                            <div class="html-content">
                                <code class="html-code">{TextUtils.escape_html(display_html)}</code>
                            </div>
                        </div>
                    </div>
                </div>'''
        
        html += '''
                </div>
            </div>'''
        
        return html
