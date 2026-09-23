E-Commerce Database – Sales & Inventory

Project Overview

This project contains the database design for the **Seller (Sales)** and Inventory entities in an e-commerce database.

The design includes:
- Seller table
- Inventory table
- Primary keys and foreign key
- One-to-many relationship
- Sample seller and inventory records
- Common inventory queries

Database

Database Name: `ecommerce`

Tables

 1. Seller

Stores details of each seller/vendor.

| Field | Data Type | Constraint | Description |
|---|---|---|---|
| seller_id | INT | PRIMARY KEY | Unique identifier for each seller |
| seller_name | VARCHAR(100) | NOT NULL | Name of seller/business |
| phone | VARCHAR(15) | - | Seller contact phone number |

 2. Inventory

Stores product stock details linked to the seller.

| Field | Data Type | Constraint | Description |
|---|---|---|---|
| inventory_id | INT | PRIMARY KEY | Unique inventory record |
| seller_id | INT | FOREIGN KEY | References Seller(seller_id) |
| product_name | VARCHAR(100) | - | Name of the product |
| quantity | INT | - | Current stock quantity |

 Relationship

One **Seller** can have many **Inventory** records.

```text
Seller
  |
  | 1
  |
  |------< Many
          |
       Inventory
```

Foreign key:

```sql
Inventory.seller_id REFERENCES Seller(seller_id)
```

 Sample Data

 Seller

| seller_id | seller_name | phone |
|---:|---|---|
| 1 | ABC Traders | 9876543210 |
| 2 | Sri Stores | 9876543211 |
| 3 | Green Mart | 9876543212 |

Inventory

| inventory_id | seller_id | product_name | quantity |
|---:|---:|---|---:|
| 101 | 1 | Rice | 60 |
| 102 | 1 | Sugar | 20 |
| 103 | 2 | Wheat | 0 |
| 104 | 2 | Oil | 35 |
| 105 | 3 | Biscuits | 80 |

 Supported Queries

The database design supports:

- Displaying all inventory records
- Finding out-of-stock products (`quantity = 0`)
- Finding products with maximum stock
- Calculating total stock quantity
- Calculating average stock quantity
- Joining Seller and Inventory tables
- Updating stock quantity after sales or restocking

Key Constraints

- `Seller.seller_id` is the Primary Key.
- `Inventory.inventory_id` is the Primary Key.
- `Inventory.seller_id` is a Foreign Key referencing `Seller.seller_id`.
- The relationship is **one Seller to many Inventory records**.

Technologies

- MySQL
- SQL
- Relational Database Management System (RDBMS)

 Source

This README is based on the uploaded **Sales (Seller) & Inventory Table Design** document.

