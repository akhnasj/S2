# MongoDB
MongoDB is a source-available cross-platform document-oriented database program. Classified as a NoSQL database program, MongoDB uses JSON-like documents with optional schemas. MongoDB is developed by MongoDB Inc.

## Key Features of MongoDB

1. **Document-Oriented Storage** : Data is stored in the form of JSON style documents.

2. **Index on any attribute** : You can index any attribute in your document to improve the performance of searches.

3. **Replication & High Availability** : MongoDB provides high availability with replica sets. A replica set consists of two or more copies of the data.

4. **Automatic Sharding** : It allows horizontal scaling, which is hard to achieve in other databases. This is done by sharding data across many servers.

5. **Rich Queries** : MongoDB supports a rich query framework that includes secondary indexes, range queries, sorting, and aggregations.

6. **No SQL** : It means you can store your data without having to worry about its structure.

![sql vs nosql](sqlvsnosql.jpg)

## SQL vs Document Databases
SQL databases are considered relational databases. They store related data in separate tables. When data is needed, it is queried from multiple tables to join the data back together.

MongoDB is a document database which is often referred to as a non-relational database. This does not mean that relational data cannot be stored in document databases. It means that relational data is stored differently. A better way to refer to it is as a non-tabular database.

MongoDB stores data in flexible documents. Instead of having multiple tables you can simply keep all of your related data together. This makes reading your data very fast.



# CRUD
CRUD stands for Create, Read, Update, and Delete. These are the four basic operations that can be performed with most traditional database systems and they are also used in MongoDB.

## Create
The `db.collection.insert()` method is used to add new documents to a collection.
```js
    db.collection('collectionName').insertOne({ key: 'value' });
```

## Read
The `db.collection.find()` method is used to retrieve documents from a collection. This method returns a cursor to the results, however, you can easily convert it to an array of documents.
```js
    db.collection('collectionName').find({ key: 'value' });
```

## Update
The `db.collection.update()` method is used to update documents in a collection. The following example updates the first document where key equals value.
```js
    db.collection('collectionName').updateOne({ key: 'value' }, { $set: { key: 'new value' } });
```

## Delete
The `db.collection.remove()` method is used to delete documents from a collection.
```js
    db.collection('collectionName').deleteOne({ key: 'value' });
```

Remember, MongoDB is schema-less, meaning the documents in a single collection do not need to have the same set of fields and the data type for a field can differ across documents within a collection.


# PyMongo

1. **Installation:**
   ```bash
   pip install pymongo
   ```

2. **Importing PyMongo:**
   ```py
   import pymongo
   ```

3. **Connecting to MongoDB:**
   Use `pymongo.MongoClient` to connect to your MongoDB server. You typically specify the connection string in the following format:
   ```py
   client = pymongo.MongoClient("mongodb://localhost:27017/")
   ```

4. **Accessing Databases and Collections:**
   Once connected, you can access databases and collections within your MongoDB server:
   ```python
   db = client["mydatabase"]  # Access a specific database
   collection = db["mycollection"]  # Access a specific collection within the database
   ```

5. **Inserting Documents:**
   Use `collection.insert_one()` or `collection.insert_many()` to insert documents into a collection:

   ```python
   # Insert a single document
   document = {"name": "John Doe", "age": 30}
   result = collection.insert_one(document)
   
   # Insert multiple documents
   documents = [{"name": "Alice", "age": 25}, {"name": "Bob", "age": 35}]
   result = collection.insert_many(documents)
   ```
    `OR`

   ```python
    # Insert a single document
    db.posts.insertOne({
    title: "Post Title 1",
    body: "Body of post.",
    category: "News",
    likes: 1,
    tags: ["news", "events"],
    date: Date()
    })

    # Insert multiple documents
    db.posts.insertMany([  
        {
            title: "Post Title 2",
            body: "Body of post.",
            category: "Event",
            likes: 2,
            tags: ["news", "events"],
            date: Date()
        },
        {
            title: "Post Title 3",
            body: "Body of post.",
            category: "Technology",
            likes: 3,
            tags: ["news", "events"],
            date: Date()
        }
    ])
    ```



6. **Querying Documents:**
   Use `collection.find()` to query documents in a collection. You can specify filter criteria using MongoDB query operators:
   ```python
   # Find documents that match a filter
   query = {"age": {"$gt": 25}}
   results = collection.find(query)
   
   # Iterate over the query results
   for doc in results:
       print(doc)
   ```

    `OR`

   ````js
   // Returns the first match
   db.posts.findOne()

   // Accepts one parameter
   db.posts.find( {category: "News"} )

   // Accepts a second parameter : "projection"
   db.posts.find({}, {title: 1, date: 1})


7. **Updating Documents:**
   Use `collection.update_one()` or `collection.update_many()` to update documents in a collection:
   ```python
   # Update a single document
   filter = {"name": "John Doe"}
   update = {"$set": {"age": 32}}  # Update the age field
   result = collection.update_one(filter, update)
   
   # Update multiple documents
   filter = {"age": {"$lt": 30}}  # Filter documents where age is less than 30
   update = {"$inc": {"age": 1}}  # Increment the age field by 1
   result = collection.update_many(filter, update)
   ```
    `OR`

   ```js
   // Updates one field
   db.posts.updateOne( { title: "Post Title 1" }, { $set: { likes: 2 } } ) 

   // If to be updated field is not found, then insert : "Upsert"
   db.posts.updateOne( 
    { title: "Post Title 5" }, 
    {
        $set: 
        {
            title: "Post Title 5",
            body: "Body of post.",
            category: "Event",
            likes: 5,
            tags: ["news", "events"],
            date: Date()
        }
    }, 
    { upsert: true }
   )

   // Update many field
   db.posts.updateMany({}, { $inc: { likes: 1 } })
   ```



8. **Deleting Documents:**
   Use `collection.delete_one()` or `collection.delete_many()` to delete documents from a collection:
   ```python
   # Delete a single document
   filter = {"name": "John Doe"}
   result = collection.delete_one(filter)
   
   # Delete multiple documents
   filter = {"age": {"$gte": 40}}  # Delete documents where age is greater than or equal to 40
   result = collection.delete_many(filter)
   ```
    `OR`

   ```js
   // Deletes the first match
   db.posts.deleteOne({ title: "Post Title 5" })
  
   // Deletes all the documents with match
   db.posts.deleteMany({ category: "Technology" })
   ```


| Operation | Description | Example |
|-----------|-------------|---------|
| Find All Documents | Returns all documents in the collection | `cursor = collection.find({})` |
| Match a Filter | Returns documents that match the filter condition | `query = { "age": { "$gt": 20 } }; cursor = collection.find(query)` |
| Limit Fields to Return | Returns only the specified fields from the documents | `query = { "age": { "$gt": 20 } }; projection = { "name": 1, "_id": 0 }; cursor = collection.find(query, projection)` |
| Sort Query Results | Returns the documents sorted by the specified field | `cursor = collection.find().sort("age", -1)` |
| Count Documents | Returns the count of documents in the collection | `count = collection.count_documents({})` |
| Limit Number of Documents | Returns a specified number of documents | `cursor = collection.find().limit(5)` |
| Skip Specified Number of Documents | Skips over a specified number of documents in the result | `cursor = collection.find().skip(5)` |
| Query for a Document | Returns the first document that matches the filter | `document = collection.find_one({"age": {"$gt": 20}})`


# MongoDB Query Operators
There are many query operators that can be used to compare and reference document fields.

## Comparison
The following operators can be used in queries to compare values:

| Operators | Description |
|-----------|-------------|
|`$eq` | Values are equal |
|`$ne` | Values are not equal |
|`$gt` | Value is greater than another value |
|`$gte` | Value is greater than or equal to another value |
|`$lt` | Value is less than another value |
|`$lte` | Value is less than or equal to another value |
|`$in`| Value is matched within an array |

## Logical
The following operators can logically compare multiple queries.

| Operators | Description |
|-----------|-------------|
|`$and` | Returns documents where both queries match |
|`$or` | Returns documents where either query matches |
|`$nor`| Returns documents where both queries fail to match |
|`$not` | Returns documents where the query does not match |

## Evaluation
The following operators assist in evaluating documents.

| Operators | Description |
|-----------|-------------|
|`$regex` | Allows the use of regular expressions when evaluating field values |
|`$text` | Performs a text search |
|`$where` | Uses a JavaScript expression to match documents |

# MongoDB Update Operators
There are many update operators that can be used during document updates.

## Fields
The following operators can be used to update fields:

| Operators | Description | 
|-----------|-------------|
|`$currentDate` | Sets the field value to the current date |
|`$inc` | Increments the field value |
|`$rename`| Renames the field |
|`$set` | Sets the value of a field |
|`$unset` | Removes the field from the document |

## Array
The following operators assist with updating arrays.

| Operators | Description |
|-----------|-------------|
|`$addToSet` | Adds distinct elements to an array |
|`$pop` | Removes the first or last element of an array |
|`$pull` | Removes all elements from an array that match the query |
|`$push` | Adds an element to an array |