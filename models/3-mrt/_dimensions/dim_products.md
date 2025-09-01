{% docs dim_products %}

# Product Table Documentation

## What This Table Contains
This table contains essential information about all products in our catalog, including details about pricing, branding, and categorization. It serves as the master reference for product data across all analytics and reporting needs.

## When To Use This Table
Use this table when you need to:
- Look up detailed product information by product ID
- Analyze product performance by brand or category
- Compare pricing across different product lines
- Create product-focused reports and dashboards
- Filter or group products by characteristics (brand, category, model year)
- Join product details to sales, inventory, or other product-related data

## Available Information

### Product Identification
- **Product ID**: Unique identifier for each product in our catalog
- **Product Name**: Full descriptive name of the product

### Product Details
- **Model Year**: The year this product model was released or updated
- **Current Price**: The current list price for this product

### Product Classification
- **Brand Name**: The brand or manufacturer of the product
- **Category Name**: The product category this item belongs to

## Important Notes for Analysis
- Each row represents one unique product in our catalog
- Product ID is the primary way to connect this table to sales, orders, and inventory data
- Current Price reflects the most recent list price - historical pricing is not tracked here
- Products are organized by both brand and category for flexible analysis
- All products have complete brand and category information for reliable grouping

## Common Use Cases
- **Product Performance**: "Which products in the 'Electronics' category had the highest sales?"
- **Brand Analysis**: "Compare revenue across all brands for 2025"
- **Pricing Analysis**: "What's the average price point by product category?"
- **Product Lookup**: "What's the full name and current price for product #12345?"
- **Inventory Planning**: "Show me all products from Brand X released in 2024"
- **Category Reporting**: "Break down sales performance by product category and brand"

## Data Freshness
This table reflects the current product catalog with up-to-date pricing and product information. New products are added as they become available, and pricing is updated to reflect current list prices.

## Analysis Tips
- Use Brand Name and Category Name together for detailed product segmentation
- Model Year can help identify newer vs. older product lines in performance analysis
- Current Price enables margin analysis when combined with cost data


{% enddocs %}