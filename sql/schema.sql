
---

### 📄 `sql/schema.sql`
```sql
-- Supply Chain Analytics Database Schema

CREATE DATABASE IF NOT EXISTS supply_chain;
USE supply_chain;

-- Orders Table
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    shipment_date DATE,
    shipment_mode VARCHAR(50),
    order_quantity INT,
    sales_amount DECIMAL(10,2),
    discount DECIMAL(10,2)
);

-- Shipments Table
CREATE TABLE shipments (
    shipment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    warehouse_country VARCHAR(100),
    status VARCHAR(50),
    schedule_days INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

-- Invent
