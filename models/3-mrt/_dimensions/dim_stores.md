{% docs dim_stores %}

# Store Table Documentation

## What This Table Contains
This table contains essential information about all store locations, including their names and complete address details. It serves as the master reference for store location data across all analytics and reporting needs.

## When To Use This Table
Use this table when you need to:
- Look up store details and locations by store ID
- Analyze business performance by geographic region
- Create location-based reports and dashboards
- Map store coverage across cities and states
- Connect store information to sales, staff, or inventory data
- Plan regional strategies and store operations

## Available Information

### Store Identification
- **Store ID**: Unique identifier for each store location
- **Store Name**: Official name of the store location

### Location Information
- **City**: The city where the store is located
- **State**: The state or province where the store operates
- **ZIP Code**: The postal code for the store's address

## Important Notes for Analysis
- Each row represents one unique store location
- Store ID is the primary way to connect this table to sales, staff, inventory, and other store-related data
- All location fields are populated, making geographic analysis reliable
- Store names may include location identifiers or regional designations
- This table contains only currently operating store locations

## Common Use Cases
- **Regional Performance**: "Compare sales performance across different states"
- **Store Lookup**: "What's the full address for store #456?"
- **Geographic Analysis**: "How many stores do we have in each city?"
- **Territory Planning**: "Show me all stores within a specific ZIP code range"
- **Store Operations**: "Create a report of all stores by state for regional management"
- **Coverage Analysis**: "Which cities have multiple store locations?"

## Geographic Analysis Benefits
- **State-Level**: Analyze performance across different states for regional insights
- **City-Level**: Identify market penetration and local competition
- **ZIP Code-Level**: Detailed demographic and location analysis
- **Multi-Store Markets**: Understand cannibalization and market coverage

## Data Freshness
This table reflects current store locations with up-to-date address information. New store openings are added promptly, and location details are maintained for accuracy.

## Analysis Tips
- Use State for high-level regional analysis and planning
- City analysis helps identify strong vs. weak local markets
- ZIP codes enable detailed demographic analysis when combined with external data
- Store names often contain helpful location context for business users
- This table forms the foundation for all location-based business analysis

{% enddocs %}