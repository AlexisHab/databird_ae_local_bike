{% docs dim_customers %}

# Customer Table Documentation

## What This Table Contains
This table contains basic information about our customers, including their names and addresses. It's designed to be a clean, easy-to-use reference for customer data across all analytics and reporting needs.

## When To Use This Table
Use this table when you need to:
- Look up customer details by customer ID
- Analyze customer distribution by geography (city, state, zip code)
- Join customer information to orders, transactions, or other customer-related data
- Create customer-focused reports and dashboards
- Segment customers by location

## Available Information

### Customer Identification
- **Customer ID**: Unique number assigned to each customer
- **First Name**: Customer's given name
- **Last Name**: Customer's family name

### Location Information
- **City**: The city where the customer lives
- **State**: The state or province where the customer is located
- **ZIP Code**: The postal code for the customer's address

## Important Notes for Analysis
- Each row represents one unique customer
- Customer ID is the primary way to link this table to other data sources
- All location fields are populated, so you can reliably filter and group by geography
- Names are stored separately (first and last), making it easy to create custom display formats
- This table contains current customer information - historical changes are not tracked here

## Common Use Cases
- **Geographic Analysis**: "How many customers do we have in each state?"
- **Customer Lookup**: "What's the full name and location for customer #12345?"
- **Regional Reporting**: "Show me sales performance by customer city"
- **Data Joining**: Link to orders, purchases, or support tickets using customer_id

## Data Freshness
This table is refreshed from our main customer database and reflects the most current customer information available.


{% enddocs %}