# Fact Check Review Standard Operating Procedure

## Quality Review Framework

### Source Reliability
- ✅ Verified authoritative sources
- ❌ Unverified or questionable sources
  - Source authority
  - Timeliness
  - Potential bias

### Data Accuracy  
- ✅ Confirmed accurate data
- ❌ Discrepancies found
  - Statistical verification
  - Measurement consistency
  - Logical coherence

### Citation Completeness
- ✅ Proper attribution
- ❌ Missing citations
  - Source documentation
  - Reference formatting
  - Contextual relevance

## Fact Checking Process

### Pre-review Preparation
1. Identify all factual claims in content
2. Gather reference materials from research/ folder
3. Establish verification criteria
4. Note: Focus on geological, historical and visitor facts

### Verification Workflow
1. **Source Verification**:
   - Cross-check against research files
   - Verify source authority
   - Confirm publication date

2. **Data Accuracy Check**:
   - Compare measurements/statistics across sources
   - Validate calculations
   - Check for internal consistency

3. **Citation Validation**:
   - Ensure proper attribution
   - Verify reference links
   - Check citation formatting

4. **Discrepancy Resolution**:
   - Minor: Document and correct
   - Major: Escalate for review
   - Unresolved: Flag with disclaimer

5. **Sign-off**: Senior Editor approval

### Review Cycle
1. Monthly content audits
2. Accuracy trend analysis
3. Training needs identification

## Tracking Structure

```yaml
fact_checks:
  - claim: "Cave length is 150 meters"
    status: verified
    sources:
      - research/facts.md
      - research/Melissani Cave, Kefalonia_ The Complete Visitor's.md
    verification_date: 2025-07-09
    reviewer: editor1
    notes: Consistent across multiple sources

  - claim: "Discovered in 1951"
    status: verified
    sources:
      - research/facts.md
      - research/studyguide.txt
    verification_date: 2025-07-09
    reviewer: editor2
    notes: Confirmed by historical records
```

## Integration Points

1. **Research Files**:
   - /research/facts.md
   - /research/Melissani Cave, Kefalonia_ The Complete Visitor's.md
   - /research/studyguide.txt

2. **Reference Materials**:
   - Writing style guide
   - Historical records

3. **Version Control**:
   - Pre-commit: Fact check validation
   - Post-commit: Accuracy monitoring