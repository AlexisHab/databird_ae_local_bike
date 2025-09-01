{% docs fct_sales__orders %}

# Orders Table Documentation

## What This Table Contains
This table contains summary information for each complete order, aggregating all line items into order-level totals. It provides a high-level view of order performance including pricing, discounts, and key relationships for order analysis.

## When To Use This Table
Use this table when you need to:
- Analyze order-level performance and trends
- Calculate average order values and order frequency
- Track order fulfillment and processing status
- Understand customer ordering patterns
- Measure staff and store performance by order volume
- Create executive dashboards and summary reports
- Analyze discount effectiveness at the order level

## Available Information

### Order Identification
- **Order ID**: Unique identifier for each complete order

### Key Relationships
- **Store ID**: Which store location processed this order
- **Customer ID**: Which customer placed this order
- **Staff ID**: Which staff member handled this order

### Order Status and Timing
- **Order Status**: Current state of the order (pending, shipped, delivered, etc.)
- **Order Date**: When the order was originally placed
- **Shipped Date**: When the order was shipped (if applicable)

### Order Summary Metrics
- **Total Number Items**: Count of different line items in this order
- **Total Order Item Amount**: Final amount customer pays (after all discounts)
- **Total Order Amount Before Discount**: Gross order value before any discounts
- **Total Order Reduction**: Total dollar amount saved through discounts
- **Order Discount**: Overall discount applied to the entire order

## Important Notes for Analysis
- Each row represents one complete order, regardless of how many products it contains
- All amounts are aggregated totals from the individual order items
- This table provides order-level summaries while detailed item information is in the Order Items table
- Order totals include all applicable discounts and promotions
- Use this table for high-level analysis, Order Items table for product-level detail

## Common Use Cases
- **Sales Trends**: "What's our average order value by month?"
- **Customer Analysis**: "Which customers place the largest orders?"
- **Store Performance**: "Compare order volumes across store locations"
- **Staff Productivity**: "How many orders does each staff member process?"
- **Discount Impact**: "What's the average discount percentage per order?"
- **Fulfillment Metrics**: "What percentage of orders ship within 2 days?"
- **Executive Reporting**: "Monthly order count and revenue summaries"

## Understanding Order Economics
- **Total Order Amount Before Discount**: What the order would cost at full price
- **Total Order Item Amount**: What the customer actually pays
- **Total Order Reduction**: Dollar amount of savings from discounts
- **Order Discount**: Additional order-level discounts beyond item discounts
- **Total Number Items**: How many different products are in the order

## Data Freshness
This table is updated with each new order and reflects real-time changes in order status, shipping updates, and any order modifications.

## Analysis Tips
- Use Order Date for time-series analysis and seasonal trends
- Calculate discount percentage as: Total Order Reduction ÷ Total Order Amount Before Discount
- Average Order Value = Total Order Item Amount ÷ Number of Orders
- Compare Total Number Items to understand basket size trends
- Filter by Order Status to focus on completed transactions vs. pipeline analysis
- Join with Customer, Store, and Staff dimension tables for deeper insights

{% enddocs %}