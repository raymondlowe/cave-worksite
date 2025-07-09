# Writing Style Review Standard Operating Procedure

## Quality Review Framework

### Tone Analysis
- ✅ Meets tone standards
- ❌ Needs tone adjustments
  - Formal/Informal Balance
  - Sensory Descriptions
  - Myth/History Weaving
  - Practical+Emotional Balance
  - Consistency Across Pages

### Terminology
- ✅ Uses approved terms ("turquoise waters", "Neolithic shrine", "shimmering spectacle")
- ❌ Contains rejected terms ("pretty", "old", "nice")

### Style Compliance
- ✅ Meets all style requirements
- ❌ Needs improvements in:
  - Hook quality
  - Content structure
  - Local insights
  - Engagement elements
  - SEO integration

### Fact Verification
- ✅ All claims verified
- ❌ Contains unsourced statements

## Detailed Review Process

### Pre-review Preparation
1. Assign pages based on reviewer expertise
2. Prepare research materials from /research/
3. Set scoring benchmarks
4. Note: Footer content should be ignored during reviews

### Team Review Workflow
1. **First Pass**: Individual scoring using rubric
2. **Team Sync**: Compare scores, discuss discrepancies
3. **Resolution**:
   - Minor: Editor discretion
   - Major: Content lead arbitration
4. **Sign-off**: Digital approval in writing_style_data.yaml

### Quarterly Review Cycle
1. Full site audit every 3 months
2. Track progress via score trends
3. Identify common issues for training

## Enhanced Tracking

```yaml
# Example writing_style_data.yaml entry
reviews:
  history.html:
    status: pass
    issues: []
    comments: "Excellent tone and terminology usage"
    history:
      - date: 2025-07-01
        reviewer: editor1
        changes: "Added sensory descriptions"
        status_change: "fail → pass"
```



### Scope
  - Only written content in the title and content/body sections are in scope
    - That is between <!-- #BeginEditable "doctitle" --> and <!-- #EndEditable --> and between <!-- #BeginEditable "body" --> and <!-- #EndEditable -->  
  - Uneditable regions, which is everything else, comes from the template file `inside.dwt` and is out of scope


## Integration Points

1. **Style Guide Links**:
   - [Tone Standards](#writing_style_guide.md#tone)
   - [Terminology Matrix](#writing_style_guide.md#terminology)

2. **Research Repo Connections**:
   - Auto-check facts against /research/
   - Flag pages needing source citations

3. **Version Control Hooks**:
   - Pre-commit: Must pass all quality gates
   - Post-commit: Update tracking data