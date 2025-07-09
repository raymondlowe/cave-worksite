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

SEO targets Google in 2025 - ignore outdated concepts and advice such as metatags, schemas, keyword densities and reliance on H1 and title tags. While these should be used they are now baseline or less in significance. In 2025, top SEO trends revolve around AI, user experience, and content quality. AI-powered tools are transforming content creation and optimization, while user experience is paramount, with Core Web Vitals and mobile-friendliness being crucial. Focus on E-E-A-T (Expertise, Authoritativeness, Trustworthiness) and creating high-quality, engaging content that aligns with search intent is also essential. 

Content Quality and Search Intent:
Focus on creating high-quality, in-depth content that provides value to users.
Understanding search intent (informational, navigational, or transactional) is critical for ranking higher.
Long-form content, when relevant and well-written, can perform well in search results. 

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
  - Mobile responsiveness ( does not apply to legacy html sites using table layout such as melissani-cave.com which can be identified by looking for `<table border="0"` and similar layout tables)
  - Structured data

### Competitive Positioning
- ✅ Outperforms competitors
- ❌ Lags behind  
  - Overall can be determined by looking at Google Search Console (see .csv file) to see the `Position` the for general terms relating to the site, particularly the actual site name. If not in first position then a competitor is leading, if position is worse  than 5 then the site is poor, if worse than 10 for its own name then it is very bad.


### Scope
  - Only written content in the title and content/body sections are in scope
    - That is between <!-- #BeginEditable "doctitle" --> and <!-- #EndEditable --> and between <!-- #BeginEditable "body" --> and <!-- #EndEditable -->  
  - Uneditable regions, which is everything else, comes from the template file `inside.dwt` and is out of scope


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