from random import randint

# f = open("numbers.txt", "w")
# for i in range(100):
#     f.write(f" {str(randint(0, 100))} ")
# f.close()

f = open("numbers.txt", "r")
data = f.read()
f.close()

# print(data.split(" "))
data = data.split(' ')

final_data = []

for i in range(len(data)):
    if(i%2==0):
        pass
    else:
        final_data.append(int(data[i]))

# print(final_data)

# for i in range(len(final_data)):
#     final_data[i] = int(final_data[i])

print(final_data)
print("Max->", max(final_data), "\nMin->", min(final_data))