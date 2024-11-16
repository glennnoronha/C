# Question 3b
j = 15  # Example initialization for j
k = (j + 13) // 27

while True:
    if k > 10:
        break
    k += 1
    i = 3 * k - 1

print("Final values - k:", k, "i:", i)

# **Question 4b: Multiple Selection with match**
k = 3  # Example initialization for k

match k:
    case 1 | 2:
        j = 2 * k - 1
    case 3 | 5:
        j = 3 * k + 1
    case 4:
        j = 4 * k - 1
    case 6 | 7 | 8:
        j = k - 2
    case _:
        j = 0  # Optional: handle cases not in the specified range

print("Value of j:", j)


