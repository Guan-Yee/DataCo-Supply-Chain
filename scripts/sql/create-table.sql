CREATE TABLE dim_customer (
    "Customer Id" INT PRIMARY KEY,
    "Customer Fname" VARCHAR(255) NOT NULL,
    "Customer Lname" VARCHAR(255),
    "Customer Email" VARCHAR(255) NOT NULL,
    "Customer Country" VARCHAR(255) NOT NULL,
    "Latitude" FLOAT NOT NULL,
    "Longitude" FLOAT NOT NULL,
    "Customer City" VARCHAR(255) NOT NULL,
    "Customer State" VARCHAR(255) NOT NULL,
    "Customer Street" VARCHAR(255) NOT NULL,
    "Customer Zipcode" FLOAT,
    "Customer Segment" VARCHAR(255) NOT NULL
);

CREATE TABLE dim_date (
    "date" DATE NOT NULL,
    "datekey" INT PRIMARY KEY,
    "year" INT NOT NULL,
    "quarter" INT NOT NULL,
    "month" INT NOT NULL,
    "weekday" INT NOT NULL,
    "weekday_name" VARCHAR(50) NOT NULL
);

CREATE TABLE dim_product (
    "Product Card Id" INT PRIMARY KEY,
	"Department Id" INT NOT NULL,
    "Department Name" VARCHAR(255) NOT NULL,
	"Category Id" INT NOT NULL,
    "Category Name" VARCHAR(255) NOT NULL,
    "Product Name" VARCHAR(255) NOT NULL,
    "Product Description" TEXT,
    "Product Price" FLOAT NOT NULL,
    "Product Status" INT NOT NULL
);

CREATE TABLE dim_region (
	"Region Id" BIGINT PRIMARY KEY,
	"Market" VARCHAR(255) NOT NULL,
    "Order Region" VARCHAR(255) NOT NULL,
    "Order Country" VARCHAR(255) NOT NULL,
    "Order State" VARCHAR(255) NOT NULL,
    "Order City" VARCHAR(255) NOT NULL
);

CREATE TABLE dim_shipping (
    "Shipping Method Id" BIGINT PRIMARY KEY,
    "Days for shipment (scheduled)" INT NOT NULL,
    "Shipping Mode" VARCHAR(255) NOT NULL
);

CREATE TABLE Fact_Sales (
    "Customer Id" INT NOT NULL,
    "Product Card Id" INT NOT NULL,
    "Order Id" INT NOT NULL,
    "Region Id" BIGINT NOT NULL,
    "Sales" FLOAT NOT NULL,
    "Order Item Quantity" INT NOT NULL,
    "Benefit per order" FLOAT NOT NULL,
    "Order Item Cardprod Id" INT NOT NULL,
    "Order Item Discount" FLOAT NOT NULL,
	"Order Item Discount Rate" FLOAT NOT NULL,
    "Order Item Product Price" FLOAT NOT NULL,
    "Order Item Profit Ratio" FLOAT NOT NULL,
    "Order Status" VARCHAR(255) NOT NULL,
    "Order Zipcode" FLOAT,
    "order date (DateOrders)" INT NOT NULL,
    "Days for shipping (real)" INT NOT NULL,
    "Shipping Method Id" BIGINT NOT NULL,
    "shipping date (DateOrders)" INT NOT NULL,
    "Delivery Status" VARCHAR(255) NOT NULL,
    "Late_delivery_risk" INT NOT NULL,
    FOREIGN KEY ("Customer Id") REFERENCES dim_customer("Customer Id"),
    FOREIGN KEY ("Product Card Id") REFERENCES dim_product("Product Card Id"),
    FOREIGN KEY ("Region Id") REFERENCES dim_region("Region Id"),
    FOREIGN KEY ("Shipping Method Id") REFERENCES dim_shipping("Shipping Method Id")
);

