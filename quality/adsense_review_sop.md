# AdSense Optimization SOP v2.0

GA4 Datafile: research/GA4-adsense-revenue-per-page.csv

example query

   tail -n +7 GA4-adsense-revenue-per-page.csv | q -H -d "," "SELECT [Landing page + query string], [Total ad revenue] FROM - ORDER BY [Total ad revenue] DESC LIMIT 5"

EXAMPLE OUTPUT:

   tail -n +7 GA4-adsense-revenue-per-page.csv | q -H -d "," "SELECT [Landing page + query string], [Total ad revenue] FROM - ORDER BY [Total ad revenue] DESC"


## Content Optimization
1. **Top Revenue Pages**
   - Source: GA4 Reports → Monetization → Ad Revenue
   - Metric: Weekly/Monthly revenue per page (USD)
   - Threshold: Flag pages below $10/month for review

2. **High-CTR Keywords**  
   - Source: Google Search Console → Performance
   - Metric: CTR (Clicks/Impressions)
   - Threshold: Target >3% CTR keywords

## Structural Elements
1. **Content Length**
   - Measure: Word count (wc -w command)
   - Standard: 1500+ words for monetized content
   - Action: Expand content below threshold

2. **Ad Placement**
   - Add placement is automated using AutoAds, do not change

## Revenue Factors
1. **Revenue per Page**
   - Source: GA4 → Pages and Screens → Ad Revenue (see research / GA4-adsense-revenue-per-page.csv)
   - Analysis: Compare top/bottom 10% performers
   - Action: Replicate top performers' structure

2. **CTR Analysis**
   - Source: AdSense Reports → Performance
   - Metric: Page-level CTR
   - Threshold: Target >1.5% overall CTR

## Review Process
1. **Monthly GA4 Reports**
   - Run date: First Monday each month
   - Focus metrics:
     - Total Ad Revenue (MoM change)
     - Top performing pages
     - CTR trends

2. **Search Console Data**
   - Run date: Weekly
   - Focus metrics:
     - Impression trends
     - Top CTR queries
     - New high-potential keywords

## Implementation Notes
- Data extraction commands to be added when Python tools available
- Current version uses manually exported CSV reports