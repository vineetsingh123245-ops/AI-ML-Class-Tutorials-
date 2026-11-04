print("Welcome to Course Advisory System")
print("Choose your interest:")
print("1. Artificial Intelligence")
print("2. Data Analysis")
print("3. Cyber Security")
print("4. Web Development")

ch = input("Enter your interest: ").lower()

if ch == "artificial intelligence" or ch == "1":
    print("Recommended Elective: Machine Learning")

elif ch == "data analysis" or ch == "2":
    print("Recommended Elective: Data Science")

elif ch == "cyber security" or ch == "3":
    print("Recommended Elective: Network Security")

elif ch == "web development" or ch == "4":
    print("Recommended Elective: Full Stack Development")

else:
    print("Sorry, no course recommendation available.")