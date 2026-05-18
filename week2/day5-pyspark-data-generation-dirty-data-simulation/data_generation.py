from pyspark.sql import SparkSession
import random
spark = SparkSession.builder.appName("DataGenerator").getOrCreate()
products = ["Laptop", "Mobile", "Tablet", "Watch", "Headphones"]
categories = ["Electronics", "Accessories"]
cities = ["Hyderabad", "Chennai", "Bangalore", "Mumbai", "Delhi", None]
data = []
for i in range(20000):
    order_id = random.randint(1000, 3000)
    customer_id = f"C{random.randint(1, 500)}"
    product = random.choice(products)
    category = random.choice(categories)
    city = random.choice(cities)
    date = f"2024-01-{random.randint(1,28):02d}"

    amount = random.choice([
        random.randint(1000, 60000),
        None,
        -random.randint(1000, 5000)
    ])

    quantity = random.randint(1, 5)

    data.append((
        order_id,
        customer_id,
        product,
        category,
        city,
        date,
        amount,
        quantity
    ))

columns = [
    "order_id",
    "customer_id",
    "product",
    "category",
    "city",
    "date",
    "amount",
    "quantity"
]

df = spark.createDataFrame(data, columns)

df.show(5)

df.write.mode("overwrite") \
    .option("header", True) \
    .csv("flipkart_raw_data")
