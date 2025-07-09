# SEO Review Standard Operating Procedure

## Data file

  - research/https___www.melissani-cave.com_-Performance-on-Search-2025-07-04/Pages.csv
  - research/https___www.melissani-cave.com_-Performance-on-Search-2025-07-04/Queries.csv

  - tool for querying csv files `q`
    - example usage :
        q -H -d "," "SELECT [Top queries], Clicks, Impressions, CTR, Position FROM $HOME/cave-worksite/research/https___www.melissani-cave.com_-Performance-on-Search-2025-07-04/Queries.csv WHERE Position > 11 AND Impressions > 500 ORDER BY Impressions DESC LIMIT 5"  # note full sqlite syntax is available in q
    - example output:
          μελισσανη,96,5882,1.63%,12.23
          kefalonia caves,60,5929,1.01%,11.9
          σπήλαιο μελισσάνησ,41,4142,0.99%,13.21
          caves in kefalonia,39,2856,1.37%,11.76


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

### Real Data from Google Search Console

Always check the csv (see above) for real data about queries when doing an SEO review. What phrases is this page under review using that relate to the queries and pages? Queries might be related to a topic and not just literal strings.

### Topic Identification
- Cluster by content themes, use csv as source as well as genera knowledge
- Map to search query patterns seen in csv files
- Identify content gaps between actual content and themes that are queried

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

### Actions / Edit / Fix

  - After identifying gaps brainstorm ways to enhance existing material or fill in
  with new material.
  - Don't just talk about it, actually edit the content of the pages
  - Create new pages if necessary based on template (`cp inside.dwt newpage.html`)
      - Use the writing style guidelines to ensure consistency
      BE VERBOSE, USE FULL SENTENCES AND PARAGRAPHS, DON'T USE BULLETS OR LISTS


# TODO for SEO tools
Need to add the tool that allows PAGE vs QUERY  to determine if a particular page has good or bad rankings for particular queries. The tool needed is at `https://github.com/raymondclowe/Google-analytics-and-search-console/tree/GA4-uv` but will need installation and configuration (authentican files) before it can be used