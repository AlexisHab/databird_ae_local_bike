{% docs dim_date %}

# Date Table Documentation

## What This Table Contains
This table contains one row for every single day, with detailed information about each date to help you analyze data over time. Think of it as a comprehensive calendar that your data can connect to for powerful time-based analysis.

## When To Use This Table
Use this table when you need to:
- Analyze trends over specific time periods (daily, weekly, monthly, quarterly)
- Compare performance between different time periods
- Create time-based filters in your reports (e.g., "last 3 months", "current quarter")
- Ensure consistent date analysis across all your data sources
- Group data by calendar periods (weekdays, quarters, fiscal years)

## Available Information

### Basic Date Information
- **Date ID**: Unique identifier for each date (typically in YYYYMMDD format)
- **Date Value**: The actual date (e.g., 2025-01-15)
- **Year Month Day**: Full date in readable format
- **Year Month**: Year and month combined (e.g., 2025-01)

### Calendar Breakdown
- **Year**: The calendar year (e.g., 2025)
- **Month**: Month number (1-12)
- **Month Padded**: Month with leading zero (01-12)
- **Day**: Day of the month (1-31)
- **Day Padded**: Day with leading zero (01-31)

### Week and Day Analysis
- **Day of Week**: Which day it is (1=Monday, 2=Tuesday, etc.)
- **Day of Year**: Which day of the year it is (1-365/366)
- **Quarter**: Which quarter of the year (1, 2, 3, or 4)
- **Week Number**: Which week of the year it is

### Time Period Flags
- **Is Current Month**: TRUE if the date falls in the current month
- **Is Last 3 Month**: TRUE if the date falls within the last 3 months
- **Is Last 6 Month**: TRUE if the date falls within the last 6 months

## Important Notes for Analysis
- This table contains **every single day** - even days with no business activity
- Each date appears **exactly once** in the table
- Use Date ID to join this table to your transaction data
- The time period flags (current month, last 3 months, etc.) automatically update to stay current
- Day of week starts with Monday = 1, following business convention

## Common Use Cases
- **Trend Analysis**: "Show me sales for each day of the week over the past quarter"
- **Period Comparisons**: "Compare this month's performance to the same month last year"
- **Time Filtering**: "Show me all transactions from the last 6 months"
- **Calendar Reporting**: "Group revenue by quarter and show fiscal year totals"
- **Missing Data Analysis**: "Which days had no activity?" (possible because every date is included)

## Why This Table Is Essential
Without a complete date table, your time-based analysis might miss important patterns. For example, if you only look at dates when sales occurred, you won't see that Sundays consistently have zero sales. This table ensures you see the complete picture of your business over time.

## Data Coverage
This table typically covers several years of dates to support both historical analysis and future planning/forecasting needs.


{% enddocs %}