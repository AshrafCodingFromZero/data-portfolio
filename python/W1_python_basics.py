# Week 1: Python Basics (from ZERO)
# Topics: print, variables, lists, loops, len(), functions, return

# Task 1: print
print("Hello world")

# Task 2: variables
name = "Ashraf"
age = 19
print("My name is", name, "and I am", age)

# Task 3: list
numbers = [3, 7, 10, 2, 8]
print("numbers:", numbers)

# Task 4: loop to sum the list
total = 0
for x in numbers:
    total = total + x
print("Total:", total)

# Task 5: average = total / number of items
print("Length of list (len):", len(numbers))
print("Average:", total / len(numbers))

# Task 6: function to compute average (reusable)
def average(nums):
    total = 0
    for x in nums:
        total += x
    return total / len(nums)

print("Average (function):", average(numbers))
