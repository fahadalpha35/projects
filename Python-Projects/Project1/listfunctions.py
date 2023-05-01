lucky_numbers = [2,32,42,64,44,7]
friends = ["Joy","Real","Farhan","Rakibul"]

friends2 = friends.copy()

friends.append("Fahad")
lucky_numbers.sort()
lucky_numbers.reverse()
friends.extend(lucky_numbers)

friends.remove("Real")
friends.insert(1,"Fake")

friends.pop(5)

print(friends)
print(friends2)

print(friends.index("Farhan"))