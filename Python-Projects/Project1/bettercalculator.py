num1 = float(input("Enter your first number: "))
op = input("Enter an operator: ")
num2 = float(input("Enter your second number: "))

if op == "+":
    print(num1 + num2)
elif op == "-":
    print(num1 - num2)
elif op == "/":
    print(num1 / num2)
elif op == "*":
    print(num1 * num2)
else:
    print("Invalid operator..!!!!!!")