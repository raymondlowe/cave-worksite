# 10x Improved Project Plan: Update melissani-cave.com

## GOAL: Monetize melissani-cave.com via AdSense by becoming the top organic resource about Melissani Cave

The entire point of this project is to EARN MORE MONEY via Google AdSense, everything else is secondary.

ONLY ROO ORCHESTRATOR IS ALLOWED TO RUN THIS PROJECT

Any other Roo Modes shoulld switch to Roo Orchestrator to initiate subtasks.

When creating sub tasks for agents that will edit content always tell them to refer to writing_style_guide.md

When editing content particularly if expanding refer to reports in research folder for factual information, don't make things up, find actual references

### Enhanced Strategy Components:
1. **Authority & Trust**: Comprehensive, accurate, and well-researched content with built-in version control
2. **Content Strategy**: High-intent topics with research repository integration from start
3. **Technical Foundation**: Modular structure with accessibility compliance
4. **Workflow Efficiency**: Parallel content/technical tracks with defined review cycles

## 1. Research & Content Strategy (Enhanced)

### Research Repository Implementation
- [x] Establish centralized research repository in `/research` with standardized formats 
- [ ] Implement version control for annual content updates
- [ ] Create content audit checklist (see `facts.md` and `erreta.md` templates)

### Content Development
- [x] Processed about.html through full review cycle (writing style, SEO, AdSense)
- [x] Processed beach.html through full review cycle (writing style, SEO, AdSense)
- [x] Processed staying-here.html through full review cycle (writing style, SEO, AdSense)
- [x] Processed timeline.html through full review cycle (writing style, SEO, AdSense) - content expanded from 100 to 1000+ words with SEO improvements
- [x] Processed visitor-info.html through full review cycle (writing style, SEO, AdSense) - content expanded from 500 to 1200+ words with SEO optimizations
- [x] Processed weather.html through full review cycle (writing style, SEO, AdSense) - content expanded from 300 to 800+ words with SEO optimizations
- [x] Processed what-to-wear.html through full review cycle (writing style, SEO, AdSense) - content expanded from 350 to 900+ words with SEO optimizations
- [x] Processed assos-village.html through full review cycle (writing style, SEO, AdSense)
- [x] Processed drogarati.html through full review cycle (writing style, SEO, AdSense)
- [x] Processed myrtos-beach.html through full review cycle (writing style, SEO, AdSense)
- [x] Processed tickets.html through full review cycle (writing style, SEO, AdSense)
- [x] Processed tours.html through full review cycle (writing style, SEO, AdSense)
- [ ] Build content audit into initial phase (compare with `research/` materials)
- [ ] Expand FAQ section based on visitor analytics
- [ ] Develop multilingual content roadmap
- [ ] Implement style guide standards (`writing_style_guide.md`)

## 2. Technical Implementation (Enhanced)

### Modular Content Structure
- [ ] Design content modules for easy updates
- [ ] Implement accessibility compliance checklist (WCAG 2.1)
- [ ] Standardize image optimization pipeline

### Style Guide Integration
- [ ] Incorporate writing_style_guide.md into development process
- [ ] Create template examples for common content types
- [ ] Implement automated style checks

### Site Architecture
- Maintain existing static HTML structure
- Enhance error pages (403, 404, 500) based on analytics
- Optimize template system (inside.dwt) for maintainability

## 3. Workflow Optimization (New Section)

### Parallel Development Tracks
- Content team workflow (research → draft → review)
- Technical team workflow (implementation → testing)

### Review Cycles
- Weekly content reviews against research sources
- Bi-weekly technical reviews
- Monthly SEO/analytics reviews

### Automation
- [ ] Implement automated testing for content updates
- [ ] Create maintenance scripts (see `remove_html.py`)
- [ ] Set up git hooks for quality control
  - For submodules: Commit and push changes inside the submodule first, then update the submodule pointer in the parent repo. Never add/commit submodule files from the parent repo. (See GIT_SUBMODULE_SOP.md for details.)

## 4. Implementation Roadmap

### Phase 1: Foundation (Month 1)
- Research repository setup
- Content audit completion
- Core module development

### Phase 2: Expansion (Months 2-3)
- Multilingual content framework
- Interactive elements prototype
- Analytics enhancement

### Phase 3: Optimization (Ongoing)
- Continuous content updates
- Technical improvements
- Revenue optimization

## Future Considerations (Enhanced)

### Maintenance Roadmap
- Quarterly content reviews
- Bi-annual technical audits
- Annual design refresh

### Technology Upgrade Path
- CMS evaluation timeline
- Interactive features development
- Mobile experience improvements

### Content Refresh Schedule
- Pricing updates: Monthly
- Seasonal information: Quarterly
- Research updates: As needed

## Quality Assurance

All content must:
1. Reference research sources (`facts.md`)
2. Follow style guide standards
3. Meet accessibility requirements
4. Support monetization goals

!!! NOTE: Maintain all existing template rules and git practices !!!
!!! NOTE: For submodules, always commit and push in the submodule first, then update the pointer in the parent repo. Never add/commit submodule files from the parent repo. (See GIT_SUBMODULE_SOP.md)

## Dreamweaver Template (.dwt) Files
- `.dwt` files define the shared structure for all pages (headers, footers, navigation).
- In `.dwt` files, only edit the parts outside the `<!-- TemplateBeginEditable -->` and `<!-- TemplateEndEditable -->` tags. These are the site-wide elements.
- Editable regions in `.dwt` files are placeholders and not meaningful for content editing.
- In ordinary HTML files, only the content inside the editable regions is in scope for editing and review.

!!! NOTE: For .dwt files, only the non-editable regions are in scope for SOP checks. For HTML files, only the editable regions are in scope.