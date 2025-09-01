{% docs dim_staffs %}

# Staff Table Documentation

## What This Table Contains
This table contains comprehensive information about all staff members, including their contact details, employment status, store assignments, and management hierarchy. It provides a complete organizational view for workforce analysis and reporting.

## When To Use This Table
Use this table when you need to:
- Look up staff member details and contact information
- Analyze organizational structure and reporting relationships
- Track staff assignments by store location
- Create workforce reports and dashboards
- Understand management hierarchy and team structures
- Filter active vs. inactive employees
- Connect staff information to sales, orders, or other staff-related activities

## Available Information

### Staff Identification
- **Staff ID**: Unique identifier for each staff member
- **First Name**: Staff member's given name
- **Last Name**: Staff member's family name
- **Full Name**: Complete name in standard format

### Contact Information
- **Phone**: Staff member's contact phone number
- **Email**: Staff member's email address

### Employment Details
- **Active**: Whether the staff member is currently active/employed
- **Store ID**: Which store location this staff member is assigned to

### Management Hierarchy
- **Manager L2 Name**: Team lead or immediate supervisor - Note : if a person does not have a manager, he/she is considered his/her own manager.
- **Manager L1 Name**: Second-level manager (manager's manager) - Note : if a person does not have a manager, he/she is considered his/her own manager.
- **Manager L0 Name**: Top manager - Note : if a person does not have a manager, he/she is considered his/her own manager.
- **Hierarchy Depth**: How deep is the level vs top management (L0).

## Important Notes for Analysis
- Each row represents one unique staff member
- Staff ID is the primary way to connect this table to sales, transactions, and other staff-related data
- The hierarchy shows the complete management chain for each employee
- Active status helps filter current vs. former employees
- Store ID connects staff to specific locations for regional analysis
- All contact information is maintained for active staff members

## Common Use Cases
- **Team Analysis**: "Who reports to Manager X and what's their hierarchy?"
- **Store Staffing**: "How many active staff members work at each store?"
- **Organizational Structure**: "Show me the complete management hierarchy"
- **Contact Directory**: "What's the email and phone for staff member #123?"
- **Performance Tracking**: "Analyze sales performance by staff member and their manager"
- **Workforce Planning**: "Which stores have the deepest management structures?"

## Understanding the Hierarchy
- **Hierarchy Depth** shows organizational levels (0 = top level, higher numbers = more junior)
- **Manager L0** is typically the immediate supervisor
- **Manager L1** is usually the department or area manager
- **Manager L2** represents senior management level
- This structure helps analyze span of control and organizational efficiency

## Data Freshness
This table reflects current organizational structure with up-to-date contact information, employment status, and reporting relationships. Changes in management structure and staff assignments are updated regularly.

{% enddocs %}