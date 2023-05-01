is_male = True
is_tall = True

if is_male or is_tall:
    print("You are a male or tall or both..!!!")
else:
    print("You are neither a male or tall..!!!!")


is_male = True
is_tall = False

if is_male and is_tall:
    print("You are a tall male..!!!")
elif is_male and not(is_tall):
    print("You are a short male..!!!")
elif not(is_male) and is_tall:
    print("You are a tall female..!!!")
else:
    print("You are either not a male or tall or both..!!!!")