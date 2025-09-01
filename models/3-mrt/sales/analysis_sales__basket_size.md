{% docs analysis_sales__basket_size %}

# Sales Summary Table Documentation

## What This Table Contains
This table provides aggregated daily sales performance metrics broken down by key business dimensions. It summarizes order activity, revenue, and item volumes at the store and staff level for easy trend analysis and performance monitoring.

## When To Use This Table
Use this table when you need to:
- Create executive dashboards and KPI reports
- Track daily sales performance trends
- Compare performance across stores and staff members
- Monitor order status distribution over time
- Calculate sales targets and performance metrics
- Build time-series charts and trend analysis
- Generate summary reports for management

## Available Information

### Analysis Dimensions
- **Order Date**: The specific date for this summary
- **Order Status**: Status category being measured
- **Store ID**: Which store location these metrics represent
- **Staff ID**: Which staff member these metrics represent

### Key Performance Indicators
- **Order Count**: Total number of orders processed
- **Total Sales**: Sum of all revenue (after discounts)
- **Number Items Sold**: Total quantity of items sold

## Important Notes for Analysis
- Each row represents one unique combination of date, status, store, and staff
- All metrics are pre-aggregated totals for the specified dimensions
- This table is optimized for fast reporting and dashboard performance
- Data is summarized from the detailed orders table
- Perfect for time-series analysis and trend identification

## Common Use Cases
- **Daily Performance**: "What were yesterday's sales by store?"
- **Staff Comparison**: "Which staff members had the highest sales this month?"
- **Trend Analysis**: "Show me order count trends over the past quarter"
- **Store Rankings**: "Rank stores by total sales for the current month"
- **Status Monitoring**: "How many pending orders do we have by store?"
- **Executive Dashboards**: "Create a sales summary for the leadership team"
- **Target Tracking**: "Are we on pace to meet monthly sales goals?"

## Analysis Tips
- **Time Trends**: Use Order Date to identify seasonal patterns and growth trends
- **Performance Comparison**: Compare Total Sales across stores and staff for performance evaluation
- **Operational Metrics**: Use Order Count and Number Items Sold to understand operational efficiency
- **Status Analysis**: Filter by Order Status to focus on specific business processes
- **Drill-Down Capability**: Use this summary table first, then drill into detailed data when needed

## How This Differs From Other Tables
- **vs. Orders Table**: This shows aggregated metrics rather than individual order details
- **vs. Order Items Table**: This provides summary totals rather than line-item specifics
- **Optimization**: Pre-calculated totals make reporting much faster than calculating on-the-fly

## Data Freshness
This table is updated daily with the latest order information, providing current performance metrics for ongoing business monitoring.

## Calculation Logic
- **Order Count**: Simple count of distinct orders
- **Total Sales**: Sum of final order amounts after all discounts
- **Number Items Sold**: Sum of quantities across all order items
- All metrics respect the grouping by date, status, store, and staff

{% enddocs %}