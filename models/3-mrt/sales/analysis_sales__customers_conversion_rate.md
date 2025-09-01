{% docs analysis_sales__customers_conversion_rate %}

# Customer Conversion Rate Table Documentation

## What This Table Contains
This table provides a comprehensive view of each customer's aggregated purchase history, including total spending, purchase recency, and conversion status. It combines customer records with aggregated order data to create a complete customer analytics foundation.

## When To Use This Table
- Analyze customer lifetime value and purchase behavior
- Segment customers based on spending and activity patterns
- Identify high-value customers and purchase trends
- Track customer engagement and conversion rates
- Create customer-focused reports and dashboards
- Build customer retention and reactivation campaigns
- Understand the difference between prospects and active customers

## Available Information

### Customer Identification
- **Customer ID**: Unique identifier linking to customer details

### Purchase History Metrics
- **Total Number Items Purchased**: Lifetime count of all items bought by this customer
- **Total Amount Spent**: Lifetime revenue from this customer (after discounts)
- **Most Recent Purchase**: Date of the customer's last order
- **Days Since Last Purchase**: Number of days between last purchase and today (set as '2021-01-01' for the exercice)

### Customer Status
- **Has Made a Purchase**: Binary flag indicating if customer has ever made a purchase (1 = yes, 0 = no)

## Important Notes for Analysis
- **Complete Customer Base**: Includes ALL customers, even those who have never made a purchase
- **Reference Date**: Days since last purchase is calculated from 2021-01-01 as the "current" date
- **Zero Values**: Customers who never purchased show 0 for amounts and quantities
- **Default Dates**: Non-purchasing customers show '1900-01-01' as most recent purchase date
- **Conversion Tracking**: Easy to identify prospects vs. active customers using the purchase flag

## Common Use Cases
- **Customer Segmentation**: "Identify high-value customers vs. one-time buyers vs. prospects"
- **Lifetime Value Analysis**: "What's the average total spent by customer segment?"
- **Retention Analysis**: "How many customers haven't purchased in the last 90 days?"
- **Conversion Tracking**: "What percentage of our customer base has made a purchase?"
- **Reactivation Campaigns**: "Target customers who haven't purchased in 6+ months"
- **Customer Health Scoring**: "Score customers based on recency and total value"

## Customer Segmentation Ideas
- **High-Value Customers**: Total Amount Spent > $500 and Recent Activity
- **At-Risk Customers**: Has Made Purchase = 1 but Days Since Last Purchase > 180
- **Prospects**: Has Made Purchase = 0 (never converted)
- **Recent Customers**: Days Since Last Purchase < 30
- **Dormant Customers**: Days Since Last Purchase > 365

## Analysis Tips
- **Use Total Amount Spent** for customer value analysis and VIP identification
- **Use Days Since Last Purchase** for retention and reactivation analysis
- **Filter by Has Made a Purchase** to separate analysis of customers vs. prospects
- **Combine metrics** to create customer health scores or lifecycle stages
- **Join with customer dimension** table for demographic analysis by purchase behavior

## Data Considerations
- "Today" has been set as 2021-01-01 for the exercice.
- Customers with -1 days since last purchase are those who never made a purchase
- Total metrics represent complete customer lifetime activity through the reference period

{% enddocs %}