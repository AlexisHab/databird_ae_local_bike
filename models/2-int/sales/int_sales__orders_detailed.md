{% docs int_sales__orders_detailed %}

# Order Items Fact Model

## Overview
This model creates a comprehensive fact table for order items by joining staging tables for order items, orders, and products. It provides a complete view of each order item with related order and product information, including calculated fields for amounts and discounts.

## Business Logic
- Combines order item details with order and product context
- Calculates total amounts before and after discounts
- Computes the actual reduction amount applied to each order item
- Maintains referential integrity through foreign key relationships

## Source Tables
- `stg_order_items`: Base order items data
- `stg_orders`: Order header information
- `stg_products`: Product master data

## Key Relationships
- **Primary Key**: `order_item_id`
- **Foreign Keys**: 
  - `order_id` → Links to orders
  - `product_id` → Links to products
  - `store_id` → Links to stores
  - `customer_id` → Links to customers
  - `staff_id` → Links to staff
  - `category_id` → Links to product categories

## Calculated Fields
- **total_order_item_amount_before_discount**: Quantity × List Price (rounded to 2 decimals)
- **order_item_reduction**: Difference between gross amount and net amount (discount applied)

## Data Quality Considerations
- All monetary calculations are rounded to 2 decimal places
- Left joins preserve all order items even if related data is missing


{% enddocs %}