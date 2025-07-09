# SEO Review Standard Operating Procedure

## Quality Review Framework

### Content Optimization
- ✅ Meets SEO best practices
- ❌ Needs improvements
  - Keyword optimization
  - Content depth
  - User intent alignment

### Technical SEO  
- ✅ Compliant items
- ❌ Non-compliant items
  - Page speed
  - Mobile responsiveness
  - Structured data

### Competitive Positioning
- ✅ Outperforms competitors
- ❌ Lags behind
  - Content coverage
  - Backlink profile
  - Engagement metrics

## SEO Review Process

### Pre-review Preparation
1. Gather YouTube/Google Analytics data
2. Identify competitor URLs
3. Set performance benchmarks
4. Note: Focus on video content performance

### Analysis Workflow
1. **First Pass**: Individual topic clustering
2. **Team Sync**: Intent classification
3. **Resolution**:
   - Minor: Content tweaks
   - Major: Content restructuring
4. **Sign-off**: SEO Lead approval

### Review Cycle
1. Monthly audits
2. Trend analysis
3. Content calendar updates

## Analysis Methodology

### Topic Identification
- Cluster videos by content themes
- Map to search query patterns
- Identify content gaps

### User Intent Analysis
```yaml
intent_classification:
  informational: 
    - "how to visit Melissani Cave"
    - "best time to visit"
  navigational:
    - "Melissani Cave official site"  
  commercial:
    - "Melissani Cave tour prices"
```

### Keyword Performance  
```yaml 
keywords:
  - term: "melissani cave tour"
    impressions: 1500
    ctr: 3.2
    position: 4.5
  - term: "kefalonia blue cave"
    impressions: 890
    ctr: 2.1
    position: 7.8
```

### Competitive Analysis
```yaml
competitors:
  - url: "example.com/melissani-cave"
    content_score: 85
    backlinks: 120
    video_count: 6
```

## Tracking Structure

```yaml
seo_review:
  content:
    topics: 
      - beach
      - cave 
      - tourism
    intent_breakdown:
      informational: 45%
      navigational: 30%
      commercial: 25%
  
  performance:
    - metric: avg_position
      target: ≤3
      current: 4.2
    - metric: ctr
      target: ≥3.5%
      current: 2.8%

  buyer_journey:
    awareness:
      - content_types: [blog_posts, videos]
        keywords: [facts, history]
    consideration: 
      - content_types: [comparisons, testimonials]
        keywords: [best tour, prices]
    decision:
      - content_types: [booking, packages]
        keywords: [deal, discount]
```

## Integration Points

1. **Data Sources**:
   - YouTube Analytics API
   - Google Search Console
   - SEMrush/Searchmetrics

2. **Automated Checks**:
   - Position tracking
   - Competitor alerts
   - Content freshness

3. **Version Control**:
   - Pre-commit: SEO checklist
   - Post-commit: Performance monitoring