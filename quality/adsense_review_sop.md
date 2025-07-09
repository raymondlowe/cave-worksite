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


### Scope
  - Only written content in the title and content/body sections are in scope
    - That is between <!-- #BeginEditable "doctitle" --> and <!-- #EndEditable --> and between <!-- #BeginEditable "body" --> and <!-- #EndEditable -->  
  - Uneditable regions, which is everything else, comes from the template file `inside.dwt` and is out of scope


## ACTION / EDIT / FIX

- Take actions to fix problems, expand pages, adjust topics, propose new topic clusters, create necessary files
- Create new pages if necessary based on template (`cp inside.dwt newpage.html`)
    - Use the writing style guidelines to ensure consistency
    BE VERBOSE, USE FULL SENTENCES AND PARAGRAPHS, DON'T USE BULLETS OR LISTS