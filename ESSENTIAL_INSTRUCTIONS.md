# Essential Project Instructions

## Content Standards
- All content must comply with writing_style_guide.md
- Maintain consistent tone and terminology
- Verify all facts with research repository (indexed in research_index.yml)

## Technical Requirements
- Follow modular content structure
- Meet WCAG AA accessibility standards
- Validate all HTML before submission

## Workflow Rules
- Use version control for all changes (Git)
  - For submodules: Commit and push changes inside the submodule first, then update the submodule pointer in the parent repo. Never add/commit submodule files from the parent repo. (See GIT_SUBMODULE_SOP.md for details.)
- Document all modifications in CHANGELOG.md (Markdown format)
- Complete peer review before finalizing

## Quality Assurance
- Follow all procedures in [Quality Assurance Procedures](#quality-assurance-procedures)
- Test all links monthly (store results in link_checks.yaml)
- Verify content accuracy annually
- Audit accessibility biannually (store results in accessibility_audits.yaml)
- Validate all HTML before submission (store results in html_validation.yaml)

## Quality Assurance Procedures
- Writing style reviews: See [quality/writing_style_sop.md]
- AdSense optimization: See [quality/adsense_review_sop.md]
- All quality data tracked in YAML format in /quality/ directory
- Mandatory quarterly reviews for all documents
- Mandatory monthly AdSense/SEO reviews

## Data Format Standards
- Configuration: Use YAML (.yml) for human-edited configs
- Documentation: Use Markdown (.md) for all text documents
- Avoid proprietary formats; prefer open standards

## Dreamweaver Template Advice
- When editing `.dwt` files (Dreamweaver templates):
  - Only edit headers, footers, and navigation in the template.
  - "Editable regions" are placeholders and not meaningful in the template itself—edit page content in the individual HTML files, not the template.

## Dreamweaver Template (.dwt) Files
- `.dwt` files are templates for site-wide structure (headers, footers, navigation).
- In `.dwt` files, only edit the parts outside the `<!-- TemplateBeginEditable -->` and `<!-- TemplateEndEditable -->` tags. These are the elements that affect all pages.
- Editable regions in `.dwt` files are placeholders and not meaningful for content editing.
- In ordinary HTML files, only the content inside the editable regions is in scope for editing and review.

Reference PROJECT_PLAN.md and LESSONS_LEARNED.md for detailed procedures.