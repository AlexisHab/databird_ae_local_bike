{% docs fct_sales__orders_detailed %}

# Order Items Table Documentation

## What This Table Contains
This table contains detailed information about every item within every order, combining order details with specific product quantities, pricing, and discount information. It's the foundation for analyzing sales performance at the most granular level.

## When To Use This Table
Use this table when you need to:
- Analyze sales performance by individual products or order items
- Calculate revenue, discounts, and profitability metrics
- Track order fulfillment and shipping status
- Connect customer purchases to specific products and staff
- Understand pricing strategies and discount effectiveness
- Create detailed sales reports and dashboards
- Analyze product performance within orders

## Available Information

### Transaction Identification
- **Order Item ID**: Unique identifier for each line item within an order
- **Order ID**: Links to the parent order containing this item

### Key Relationships
- **Product ID**: Which specific product was ordered
- **Store ID**: Which store location processed this order
- **Customer ID**: Which customer made this purchase
- **Staff ID**: Which staff member handled this order

### Order Status and Timing
- **Order Status**: Current state of the order (pending, shipped, delivered, etc.)
- **Order Date**: When the order was originally placed
- **Shipped Date**: When the order was shipped (if applicable)

### Quantity and Pricing Details
- **Quantity**: Number of units ordered for this specific product
- **Order Item Price**: Price per unit for this item
- **Order Item Discount**: Discount amount applied to this item
- **Total Order Item Amount Before Discount**: Gross amount (quantity × price)
- **Total Order Item Amount**: Final amount after discounts applied
- **Order Item Reduction**: Total discount amount (gross - net)

## Important Notes for Analysis
- Each row represents one product within one order
- A single order can have multiple rows if it contains multiple different products
- All monetary amounts are calculated and stored for easy analysis
- Order Item ID is unique across the entire system
- Discount calculations show both the discount amount and the final reduction

## Common Use Cases
- **Product Performance**: "Which products generate the most revenue?"
- **Discount Analysis**: "How much revenue impact do our discounts have?"
- **Customer Behavior**: "What's the average order size by customer?"
- **Staff Performance**: "Which staff members process the highest value orders?"
- **Store Comparison**: "Compare average order values across store locations"
- **Fulfillment Tracking**: "How many orders are pending shipment?"
- **Profitability Analysis**: "Calculate margins after discounts by product category"

## Understanding the Pricing Structure
- **Order Item Price**: The list price per unit
- **Total Before Discount**: Quantity × Order Item Price
- **Order Item Discount**: The discount rate or amount applied
- **Total Order Item Amount**: The final amount customer pays for this item
- **Order Item Reduction**: The dollar value of savings from discounts

## Data Freshness
This table is updated with each new order and reflects real-time order status changes including shipping updates and order modifications.

## Analysis Tips
- Use Order Date for time-based trending and seasonal analysis
- Compare Total Before Discount vs. Total Amount to measure discount impact
- Group by Product ID to analyze individual product performance
- Filter by Order Status to focus on completed vs. pending transactions
- Combine with dimension tables (customers, products, stores) for deeper insights

{% enddocs %}