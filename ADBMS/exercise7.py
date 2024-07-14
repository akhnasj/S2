import pymongo

url = "mongodb://localhost:27017"
client = pymongo.MongoClient(url)
db = client["college"]
collection = db["studlist"]

# 1
for student in collection.find({"gender":"female", "course":"MCA"}):
    print(f"Name: {student['name']['fname']} {student['name']['lname']}, Marks: {student['mark']}")


def print_details(student):
    print(f"""
          Name: {student['name']['fname']} {student['name']['lname']}
          Address: {student['address']['house_name']}, {student['address']['city']}
          Gender: {student['gender']} 
          Course: {student['course']}
          Mark: {student['mark']}
          Grade: {student['grade']}
          Phone: {student['phone']['no']} ({student['phone']['type']})
        """)

# 2
topper = collection.find({"course":"MCA"}).sort("mark", -1).limit(1)
for student in topper :
    print(f"""
          Name: {student['name']['fname']} {student['name']['lname']}
          Address: {student['address']['house_name']}, {student['address']['city']}
          Gender: {student['gender']} 
          Course: {student['course']}
          Mark: {student['mark']}
          Grade: {student['grade']}
          Phone: {student['phone']['no']} ({student['phone']['type']})
        """)


# 3
query = {"gender":"male","grade":"A+"}
cursor = collection.find(query)
for student in cursor:
    print_details(student)

# 4
mech_toppers = collection.find({"course":"Mechanical"}).sort("mark",-1).limit(3)
for student in mech_toppers:
    print_details(student)


# 5
query = {"gender":"female","mark":{"$gt": 90}}
female_toppers = collection.find(query)
for student in female_toppers :
    print(f"""
          Name: {student['name']['fname']} {student['name']['lname']}
          Mark: {student['mark']}
          Grade: {student['grade']}
          Phone: {student['phone']['no']} ({student['phone']['type']})
          """)


# 6
for student in collection.find({"mark":{"$gt":80,"$lt":90}}) :
    print_details(student)

# 7
for student in collection.find({"name.fname":{"$regex":"^V"}}) :
    print_details(student)

# 8
for student in collection.find({"address.city":"Kollam"}) :
    print_details(student)

# 9
for student in collection.find({"gender":"female","address.city":{"$nin":["Kollam","Thiruvananthapuram"]}}):
    print_details(student)

# for student in collection.find({"$nor":[{"address.city":"Kollam"},{"address.city":"Thiruvananthapuram"}]}):
#   print_details(student)

# 10
for student in collection.find({"address.city":{"$in":["Kollam","Thiruvananthapuram"]}}):
    print_details(student)

# for student in collection.find({"gender": "female", "$or": [{"address.city": "Thiruvananthapuram"}, {"address.city": "Kollam"}]}):
#   print_details(student)


# Inserting a value
student = {'_id': 27, 'name':{'fname':'John', 'lname':'Doe'}, 'address':{'house_name':'BS23X','city':'Atlantis'}, 'gender':'male','course':'MCA', 'mark': 80, 'grade': 'A','phone':{'type':'mobile','no': 88888888}}
collection.insert_one(student)

print_details(collection.find_one({"_id":27}))


# Updating a value
query = {"_id": 26}
update_value = {"$set": {"name.fname": "Don", "name.lname": "Joe"}}
collection.update_one(query,update_value)

print_details(collection.find_one({"_id": 26}))


# Deleting a value
query = {"_id": 27}
collection.delete_one(query)