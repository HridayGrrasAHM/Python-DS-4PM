from random import randint

randomL = [randint(0, 100) for i in range(100)]

odd = []
for i in randomL:
    if i%2 == 0:
        pass
    else:
        # print(i) 
        odd.append(i)

print(odd)
# print(randomL)

# for i in len(randomL):
#     i = 0
#     print(i)
