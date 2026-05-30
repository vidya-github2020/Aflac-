"""
Generators package for HTML section generation.

This package contains classes responsible for generating different sections of HTML reports.
"""

from .section_generator import SectionGenerator
from .rule_generator import RuleGenerator
from .overview_generator import OverviewGenerator

__all__ = ['SectionGenerator', 'RuleGenerator', 'OverviewGenerator']
