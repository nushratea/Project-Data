# Python Introduction

In your work as an analyst, imagine you are considering sales at a specific theater and you want to save the theater's unique identification, which is "b79cn10k", to a variable. By doing this, you'll be able to access the ID easily if you need it later. In the following code cell:

- Assign the theater's unique identification to a variable named theater_id.

- Display the contents of the theater_id variable


```python
# Task 1: Assign the theater ID to a variable.
theater_id="b79cn10k"
print(theater_id)
```

    b79cn10k


As you continue your work, you're provided a list of the different types of tickets sold by the theater: `"Senior"`, `"Adult"`, and `"Youth"`. In this task, focus on the `"Adult"` ticket type.

- Create a variable called `ticket_type` and assign it a value of `"Adult"`.
- Display the contents of the `ticket_type` variable.


```python
# Task 2: Create a ticket type variable.
ticket_type='adult'
print(ticket_type)
```

    adult


Now that you've recorded the types of tickets being sold, it's time to record the number of adult tickets sold so far.

- Create a variable called `adult_tickets_sold` that represents the current number of "adult" tickets sold and assign it a value of `59.0`.

- Check the data type of `adult_tickets_sold`.


```python
# Task 3: Save the number of adult tickets to a variable and check the data type.
adult_tickets_sold=59.0
print(adult_tickets_sold)
```

    59.0


The data you work with as a data professional often needs to be converted to different data types. In this case, the number of tickets sold should be recorded as integers and not floats.

- Convert the data saved in the `adult_tickets_sold` variable from a **float** to an **integer**. Reassign the result back to the `adult_tickets_sold` variable.

- Check the data type of `adult_tickets_sold`.


```python
# Task 4: Convert data types and print the result
adult_tickets_sold=int()
type(adult_tickets_sold)
```




    int



## Conclusion

#### What are your key takeaways from this lab?

<p style="font-family:TimesNewRoman;">Many useful operators in Python help you work with variables.</p>

- The = assignment operator allows you to assign or reassign a specific value to a variable.

- The print() function in Python allows you to display information.
It can take in a value directly or a variable that stores a value.
      
- Python's type() function helps you determine an object's data type. If you pass in a variable to type(), it will output the data type of the value stored in it. Python can convert some data types from one to another. Using the int() function on a variable that stores data as a float will convert the data from a floating point number to an integer.


# Reference Guide: Functions


```python
from IPython.display import Image, display

# Define the URL for the image
url = "https://raw.githubusercontent.com/nushratea/Project-Data/main/Data%20Visualization%20Examples/Python/Python%20Basics%20for%20J.Notebook/functions.png"

# Display the image
display(Image(url=url))

```


<img src="https://raw.githubusercontent.com/nushratea/Project-Data/main/Data%20Visualization%20Examples/Python/Python%20Basics%20for%20J.Notebook/functions.png"/>


### return vs. print

<p>Sometimes the difference between return statements and print statements isn’t clear to new learners of Python. It’s important to understand what each action is and when to use it. Return statements give you a result that you can use for something else. It doesn’t have to be something that prints when the function is run. Print statements print something to the console and nothing more. Think of it like this: a return statement is like your brother going to the market and bringing you back a bag of potatoes. A print statement is like your brother going to the market, coming home, and telling you what kind of potatoes were for sale. With the return statement, you have some potatoes to cook. With the print statement, you just know what potatoes are available, but you don’t have any potatoes.</p>

### Functions vs. Methods

<p>Functions and methods are very similar, but there are a few key differences. Methods are a
specific type of function. They are functions that belong to a class. This means that you can
use them—or “call” them—by using dot notation.</p>

### Scenerio

<p>As a data professional, you'll often need to reuse the same block of code more than once when you're writing Python code to automate a certain task. This is why functions are important. You can call functions whenever you need the computer to execute those steps. Python has built-in functions that have already been defined and also provides tools for users to define their own functions.</p>

In your work as a data analyst for a movie theater, you're asked to quickly calculate how much the theater has made in sales so far.

### Task 1: In the following cell, analyze the function named total_sales and make note of your observations.

You do not need to run this cell, but if you do it will not produce an output.


```python
#Task 1: Analyze a function

# Function name total_sales
def total_sales():

    #return a value
    return
```

As you continue refining your code, imagine that the price of tickets is $7.99. Now you will need to add a parameter to the function definition and the calculation to the function body.

### 2a: Add a calculation to the function

In this task, update the total_sales function so it returns the value of the number of tickets n multiplied by the price 7.99.


```python
# Function name total_sales
def total_sales(n): # n is the number of tickets

    #returns the number of tickets * the ticket price $7.99
    return n * 7.99 
```

### 2b. Call the function


```python
# Function name total_sales
def total_sales(n): # n is the number of tickets

    #returns the number of tickets * the ticket price $7.99
    return n * 7.99 

# Calling Function
total_sales(59)
```




    471.41



### Task 3: Create a function that accepts two values

<p>You learn that the price of tickets is more expensive for opening night, and now you need to create a function that will accept two values and return their total value.</p>

### 3a: Refine the `total_sales` function

*  Update your `total_sales` function so it accepts two parameters:
    * `price` for the price per ticket
    * `num_tickets` for the total number of tickets.

* Return the product of the two arguments. Use the Python `round()` function to round the returned value to two decimal places. Refer to the [round() Python documentation](https://docs.python.org/3/library/functions.html#round) for more information regarding this function.


```python
# Refining the function total_sales
def total_sales(price, num_tickets): # now accepting two parameters

    #returns the product of price and num_tickets rounded to two decimals
    return round(price * num_tickets, 2)
```

### 3b. Call the function

<p>Then, call the function with the value of `15.99` for `price` and `1001` for the number of tickets sold (`num_tickets`).</p>


```python
# Refining the function total_sales
def total_sales(price, num_tickets): # now accepting two parameters

    #returns the product of price and num_tickets rounded to two decimals
    return round(price * num_tickets, 2)

total_sales(15.99, 1001)
```




    16005.99



## Conclusion

**What are your key takeaways from this lab?**

- Python allows you to define and call functions that you create.
- The main components of a function are the definition statement, the body, and the output statement (usually `return` or `print`).
    - The function header includes the `def` keyword, followed by the name of the function, followed by parantheses, followed by a colon.
    - The function body includes an indented block of code that instructs the computer on what to do when the function is called.
    - The output statement is what the function should produce as a result when executed.
- Functions allow you to reuse common code.
    - Frequently used calculations can be saved to a function and reused without writing out the equation multiple times.
- Functions accept single or multiple parameters.
    - Functions can be customized to accept more than one parameter and perform calculations on them, which allows greater flexibility when working with fluctuating values.
- Including functions such as `round()` to the return statement helps keep calculated values tidy and easy to read.
- Scaffolding functions with code comments helps improve readibility.
    - Clearly commented code explains how the code works as well as the intended results.

# Python Operators

### Comparators

<p>In Python, you can use comparison operators to compare values. When a comparison is made, Python returns a Boolean result—True or False. Python uses the following comparators:</p>


```python
from IPython.display import Image, display

# Define the URL for the image
url = "https://raw.githubusercontent.com/nushratea/Project-Data/main/Data%20Visualization%20Examples/Python/Python%20Basics%20for%20J.Notebook/Comparators.png"

# Display the image
display(Image(url=url))
```


<img src="https://raw.githubusercontent.com/nushratea/Project-Data/main/Data%20Visualization%20Examples/Python/Python%20Basics%20for%20J.Notebook/Comparators.png"/>


#### Notes

- The single equals sign (=) is reserved for assignment statements. If you use a single equal sign to make a comparison, the computer will return a SyntaxError.

- If you try to compare data types that aren’t compatible, like checking if a string is greater than an integer, Python will throw a TypeError. 

### Logical Operators

<p>Python also has three logical operators that can be combined with comparators to create more complex statements. 

These operators are:</p>

   - <b>and</b>: evaluates to True only if both statements are true
   - <b>or</b>: evaluates to True if one or both of the statements are true
   - <b>not</b>: reverses the evaluation.If the statement evaluates to True, returns False; if the statement evaluates to False, returns True

### Arithmetic Operators

<p>Python is also capable of performing mathematical operations using a set of built-in operators. These arithmetic operators are:</p>


```python
from IPython.display import Image, display

# Define the URL for the image
url = "https://raw.githubusercontent.com/nushratea/Project-Data/main/Data%20Visualization%20Examples/Python/Python%20Basics%20for%20J.Notebook/Operators.png"

# Display the image
display(Image(url=url))
```


<img src="https://raw.githubusercontent.com/nushratea/Project-Data/main/Data%20Visualization%20Examples/Python/Python%20Basics%20for%20J.Notebook/Operators.png"/>


# Conditional Statements

<p>Conditional statements are an essential part of programming. They allow you to control the flow of information based on certain conditions. In Python, if, elif, and else statements are used to implement conditional statements. Using conditional statements to branch program execution is a core part of coding for most data professionals. </p>

### Conditionals syntax


```python
from IPython.display import Image, display

# Define the URL for the image
url = "https://raw.githubusercontent.com/nushratea/Project-Data/main/Data%20Visualization%20Examples/Python/Python%20Basics%20for%20J.Notebook/Conditions.png"

# Display the image
display(Image(url=url))
```


<img src="https://raw.githubusercontent.com/nushratea/Project-Data/main/Data%20Visualization%20Examples/Python/Python%20Basics%20for%20J.Notebook/Conditions.png"/>



```python
from IPython.display import Image, display

# Define the URL for the image
url = "https://raw.githubusercontent.com/nushratea/Project-Data/main/Data%20Visualization%20Examples/Python/Python%20Basics%20for%20J.Notebook/exampleconditions.png"

# Display the image
display(Image(url=url))
```


<img src="https://raw.githubusercontent.com/nushratea/Project-Data/main/Data%20Visualization%20Examples/Python/Python%20Basics%20for%20J.Notebook/exampleconditions.png"/>


### Important Key Points:

- The elif and else statements are optional. You can have an if statement by itself.
- You can have multiple elif statements.
- You can only have one else statement, and only at the end of your logic block.
- The conditions must be an expression that evaluates to a Boolean value (True or False).
- Indentation matters! The code associated with each conditional statement must be indented below it. The typical convention for data professionals is to indent four spaces.
    - Indentation mistakes are one of the most common causes of unexpected code behavior.

### Example Problems

### Task 1: Define a Comparator Function 

You are a data professional for a movie theater, and your task is to use customers' purchasing data to determine whether or not to send them a marketing email.

*   Define a function called `send_email` that accepts the following arguments:
    *  `num_visits` - the number of times a customer has visited the theater
    *  `visits_email` - the minimum number of visits the customer must have made for them to receive a marketing email
*   The function must print either: `Send email.` or `Not enough visits.`


```python
# Function name send_email
def send_email(num_visits, visits_email):
    if num_visits < visits_email:
        print('Not enough visits.')
    else:
        print('Send email.')
```

### Task 2: Add logical branching to your function

The theater is offering a promotion where customers who have visited the theater more than a designated number of times will also receive a coupon with their email. Update the function that you created above to include additional logical branching.

- Include an additional argument visits_coupon that represents the minimum number of visits the customer must have made for them to receive a coupon with their email.
- The function must print one of three possible messages:
  
  1. Send email with coupon.
  2. Send email only.
  3. Not enough visits.

The minimum number of visits to receive a coupon will always be greater than the number to receive an email only.


```python
# Function name send_email
def send_email(num_visits, visits_email, visits_coupon):
    if num_visits >= visits_coupon:
        print('Send email with coupon')
    elif num_visits == visits_email:
        print('Send email only')
    else:
        print('Not enough visits')

send_email(num_visits=3, visits_email=5, visits_coupon=8)
send_email(num_visits=5, visits_email=5, visits_coupon=8)
send_email(num_visits=8, visits_email=5, visits_coupon=8)
```

    Not enough visits
    Send email only
    Send email with coupon


## Conclusion

**What are your key takeaways from this lab?**

- Conditional statements, comparison operators, and logical operators play a major role in automating processes and controlling the branching of code execution.
- Conditional statements allow you to determine whether a specific set of criteria has been met.
- Comparison operators allow you to compare pairs of values.
- Comparison operators such as >= and <= can be combined to select a range of data within a specific parameter.
- Logical operators such as and and or allow you to check more than one condition at a time.

# Loops

A while loop allows you to repeatedly execute a block of code while a certain condition is true. You can use the break statement to exit the loop prematurely, and the continue statement to skip to the next iteration of the loop without executing the rest of the code in the current iteration.


```python
x = 1
i = 0
while x <100:
    if i == 5:
        break
    print(i,x)
    x = x+2
    i += 1
```

    0 1
    1 3
    2 5
    3 7
    4 9


### Task 1: Iterate with a while Loop

While continuing your work as an analyst for a movie theater, you've been asked to create a function that will require a `while` loop. To prepare for the job, first practice using `while` loops.

In this warmup task:

* Create a variable called `candy_purchased` that will act as a counter. Initialize it with a starting value of `0`.
* Write a `while` loop that will continue iterating until `5` candies have been purchased.
    * Each iteration of the loop must print `'Candy purchased: {number}'` and increment `candy_purchased` by one.

*Expected output:*
```
Candy purchased: 0
Candy purchased: 1
Candy purchased: 2
Candy purchased: 3
Candy purchased: 4
Candy purchased: 5
```


```python
# Assign `candy_purchased` to an initial value of 0 to act as a counter
candy_purchased = 0

# Create an iterative statement using `while` and `candy_purchased`
# Display how many purchases have been made with each iteration

while candy_purchased <= 5:
    print('Candy purchased: ' + str(candy_purchased))
    candy_purchased += 1 # Increment the candy_purchased counter
```

    Candy purchased: 0
    Candy purchased: 1
    Candy purchased: 2
    Candy purchased: 3
    Candy purchased: 4
    Candy purchased: 5


### Task 2: Iterate using while and if 

In the next warmup task, you'll use a while loop that has an if statement and some Boolean logic.

- Write a while loop where candy_purchased begins at 0 and stops after 100 purchases have been made. Your code must:
    - Increment candy_purchased by one with each iteration
    - Print 'Candy purchased: {number}' only when a multiple of 10 purchases have been made

Expected output:

    - Candy purchased: 0
    - Candy purchased: 10
    - Candy purchased: 20
    - Candy purchased: 30
    - Candy purchased: 40
    - Candy purchased: 50
    - Candy purchased: 60
    - Candy purchased: 70
    - Candy purchased: 80
    - Candy purchased: 90
    - Candy purchased: 100


```python
candy_purhased = 0
while candy_purchased <= 100:
    if candy_purchased % 10 == 0:
        print('Candy purchased: ' + str(candy_purchased))
    candy_purchased += 1
```

    Candy purchased: 10
    Candy purchased: 20
    Candy purchased: 30
    Candy purchased: 40
    Candy purchased: 50
    Candy purchased: 60
    Candy purchased: 70
    Candy purchased: 80
    Candy purchased: 90
    Candy purchased: 100


### Task 3: Create a webpage timer function

It's time to take on the project you've been asked to complete for the theater.

This task makes use of a function called sleep() from the time module. Whenever sleep(n) is executed, the program will pause for n seconds. Run the below cell as an illustrative example to help you understand.


```python
from time import sleep

n = 3
while n >= 0:
    print(n)
    sleep(1) # Execution pauses for 1 second
    n = n - 1 # Decrement n by 1
```

    3
    2
    1
    0


For the purposes of this task, pretend that 1 second = 1 minute, so the above cell would represent a 3-minute countdown.

The movie theater has implemented online reservations through their website. From the seat selection page, customers have a limited amount of time to make their selection. You must write a function that counts down and reminds the user that they have limited time to make a selection. When time expires, it must print a timeout message.

*  Instantiate a variable called `mins` and assign it a starting value of `10`.
*  Write a `while` loop that uses the `sleep()` function and decrements `mins` from `10` minutes. For each minute:

    *  Print how many minutes remain as an integer. <br/>**BUT:**
    *  If there are 5 minutes left, print `Place your reservation soon! 5 minutes remaining.` instead of the integer.
    *  If there are 2 minutes left, print `Don't lose your seats! 2 minutes remaining.` instead of the integer.
    *  When zero minutes remain, print `User timed out.` instead of the integer.

*Expected output:*

```
10
9
8
7
6
Place your reservation soon! 5 minutes remaining.
4
3
Don't lose your seats! 2 minutes remaining.
1
User timed out.
```



```python
from time import sleep

### YOUR CODE HERE ###
mins = 10

while mins >= 0:
    if mins == 5:
        print('Place your reservation soon! 5 minutes remaining.')
    elif mins == 2:
        print('Don\'t lose your seats! 2 minutes remaining.')
    elif mins == 0:
        print('User timed out.')
    else:
        print(mins)
    mins -=1
    sleep(1)
```

    10
    9
    8
    7
    6
    Place your reservation soon! 5 minutes remaining.
    4
    3
    Don't lose your seats! 2 minutes remaining.
    1
    User timed out.


## Conclusion

**What are your key takeaways from this lab?**

* Iterative statements play a major role in automating processes that need to be repeated.
* `while` loops allow you to repeat a process until a specific condition is no longer true.
* Comparison operators can be used to check one value against another.
* Variables can be set as counters and incremented by different amounts to help control your `while` loop.

# FOR LOOPS

For loops are like while loops, but instead of looping continuously until a condition is met, for loops iterate over each element of an iterable sequence, allowing you to perform an action or evaluation with each iteration. This is an important process in computer programming, not just in Python, but in most other languages too. Data professionals use for loops to process data.

### FOR LOOP SYNTAX




```python
num = 5
y = [1, 2, 3]
for num in y:
   print(num)

print(num)
```

    1
    2
    3
    3


### The range() function

The for loop allows you to create a loop that performs exactly the number of iterations needed for the data structure you’re looping over. In other words, whether your iterable sequence contains two, 1,000, or a million elements, you can use the same syntax and don’t have to specify the number of iterations you want. However, sometimes you need to perform a task a set number of times, but you don’t already have an iterable object to loop over. Or, sometimes you need to generate a known, regular sequence of numbers. This is where the range() function is useful.

The range() function is a function that takes three arguments: start, stop, step. Its output is an object belonging to the range class. If you only include one argument, it will be interpreted as the stop value. The start and step values by default will be zero and one, respectively. If you include two arguments, they will be interpreted as the start and stop values (again, with step being one by default). Note that the stop value is not included in the range that is returned.


```python
for even_num in range(2, 11, 2):
   print(even_num)
```

    2
    4
    6
    8
    10


### Nested Loops

Sometimes you’ll need to extract information from nested structures—for example, from a list of lists. One way of doing this is by using nested loops. A nested loop is a loop inside of another loop. You can have an infinite number of nested loops, but it becomes more confusing to read and understand the more nested loops you add. 


```python
students = [['Igor', 'Sokolov'], ['Riko', 'Miyazaki'], ['Tuva', 'Johansen']]
for student in students:
   for name in student:
       print(name)
   print()
```

    Igor
    Sokolov
    
    Riko
    Miyazaki
    
    Tuva
    Johansen
    


## Task 1: Iterating with `if`, `elif`, and `else`

In your work as an analyst, you have received customer feedback for a newly launched product. The feedback is a numerical grade on a scale of 1-10, with 10 being the best. Understanding the number of customers who responded negatively, neutrally, or positively will help determine how to improve the product.

*  Define a function called `score_counter` that accepts the following argument:
    * `score_list` - a list of customer-submitted scores, where each score is an integer, 1-10  
    

*  The function must iterate over the scores in `score_list` and bin them into three bins:  
    * Negative (scores of 1-5)  
    * Neutral (scores of 6-8)  
    * Positive (scores of 9-10)
    

*  The output of the function must be three statements, each on its own line:

    1. `'Negative: {number_of_negative_scores}'`
    2. `'Neutral: {number_of_neutral_scores}'`
    3. `'Positive: {number_of_positive_scores}'`

*Example:*

```
 [IN] score_counter([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
[OUT] 'Negative: 5'
      'Neutral: 3'
      'Positive: 2'
```


```python
def score_counter(score_list):
    
    negative_scores = 0
    neutral_scores = 0
    positive_scores = 0

    for score in score_list:
        if score <= 5 and score >= 1:
            negative_scores += 1
        elif score >= 6 and score <= 8:
            neutral_scores += 1
        else: 
            positive_scores += 1

    print('Negative:', negative_scores)
    print('Neutral:', neutral_scores)
    print('Positive:', positive_scores)

# RUN THIS CELL TO TEST YOUR FUNCTION

import random
random.seed(42)

possible_scores = list(range(1,11))
score_list1 = random.choices(possible_scores, weights=[8,8,8,8,8,3,3,4,20,30], k=10)
score_list2 = random.choices(possible_scores, weights=[1,2,3,4,5,10,15,15,7,9], k=450)
score_list3 = random.choices(possible_scores, weights=[1,2,3,4,4,5,5,10,15,25], k=10000)

print('Test 1:')            # SHOULD OUTPUT (neg, neut, pos):
score_counter(score_list1)  # 5, 1, 4
print('\nTest 2:')
score_counter(score_list2)  # 85, 253, 112
print('\nTest 3:')
score_counter(score_list3)  # 1935, 2652, 5413
```

    Test 1:
    Negative: 5
    Neutral: 1
    Positive: 4
    
    Test 2:
    Negative: 85
    Neutral: 253
    Positive: 112
    
    Test 3:
    Negative: 1935
    Neutral: 2652
    Positive: 5413


# Task 2: Create a nested loop

You've been asked to calculate the total value of all purchases made by each customer to understand how many customers have spent $100+.

*  Write a function called `purchases_100` that accepts the following argument:
    * `sales` - a list of lists where each inner list contains the prices of items purchased by a unique customer.

* The function must return the number of customers whose purchases summed to $100 or more.

*Example:*

```
sales = [[2.75], [50.0, 50.0], [150.46, 200.12, 111.30]]

 [IN]  purchases_100(sales)
[OUT]  2
```

**Note that there is more than one way to solve this problem.**


```python
def purchases_100(sales):
    count = 0  # Set a counter of totals > 100
    for customer in sales:  # Loop over each inner list
        customer_total = 0  # Set 0 value of purchases for the inner list
        for purchase in customer:  # For price in inner list:
            customer_total += purchase  # Add the price to value of purchases for inner list
        if customer_total >= 100:  # If total >= 100
            count += 1  # Increment the counter
    return count

# Define your sales data
sales = [[2.75], [50.0, 50.0], [150.46, 200.12, 111.30]]

# Call the function with the defined sales data
result = purchases_100(sales)
print(result)  # Output the result

```

    2


## Conclusion

**What are your key takeaways from this lab?**

- Iterative statements play a major role in automating repetitive analyses.
- You can use for loops to allow you to repeat a process a specified number of times.
- if, elif, else, logical, and comparative operators can be used together within a for loop to specify which values to iterate through.
- Python built-in functions are versatile and can be applied within loops, functions, or stand-alone.

# String indexing and Slicing

### String formatting

Indexing refers to accessing a single element of a sequence by its position. In Python, the first element of any sequence has an index of zero. This means Python uses zero-based indexing. Numerous other programming languages also use zero-based indexing, but not all of them do. Some languages use one-based indexing, such as R, Julia, and SAS. 


```python
my_string = 'Mississippi half-step'
print(my_string[0])

my_list = [1, 'unladen', 'swallow']
print(my_list[1])

print(my_list[-1])
```

### Slicing

Slicing refers to accessing a range of elements from a sequence. Use square brackets containing two indices separated by a colon. 


```python
new_string = 'pining for the fjords'
print(new_string[0:3])
print(new_string[:3])
```

These two examples, each with slightly different syntax, are being used to produce the same result. Notice two things: (1) the resulting slice includes the starting index and excludes the ending index; (2) when the starting index is omitted it’s implied to be zero, as shown in the second print line. 

### Key takeaways

Indexing and slicing are powerful tools in Python that allow you to access specific elements or parts of a sequence. Both indexing and slicing use square brackets. Remember that in a slice the starting index is inclusive and the stopping index is exclusive, and that negative indices count from the end of the sequence. With these tools, you can manipulate strings and other iterable sequences to perform a wide variety of operations, making you a more proficient data professional.

# String formatting and regular expressions

### String formatting 

String formatting uses the format() method, which belongs to the string class. This method formats and inserts specific substrings into designated places within a larger string. It’s useful when you have reusable template text into which you want to insert specific changeable values, for example. The format() method is also useful when assigning the strings used to label charts and graphs you make. 


```python
x = 'values'
y = 100

print('''String formatting lets you insert {} into strings.
They can even be numbers, like {}.'''.format(x, y))
```

The format() function can also insert values into braces using explicitly assigned keyword names, which allow you to mix up the order of the function’s arguments without changing the order of their insertion into the final string. 


```python
var_a = 'A'
var_b = 'B'
print('{a}, {b}'.format(b=var_b, a=var_a))
```

### Literal string interpolation (f-strings)

Another string formatting technique you’ll often encounter when using Python version 3.6+ is literal string interpolation, also known as f-strings. F-strings further minimize the syntax required to embed expressions into strings. They’re called f-strings because the expressions always begin with f (or F—they’re the same). 


```python
var_a = 1
var_b = 2
print(f'{var_a} + {var_b}')
print(f'{var_a + var_b}')
print(f'var_a = {var_a} \nvar_b = {var_b}')
```

### Float formatting options

1. The float variable is what’s being formatted

2. A colon (:) separates what’s being formatted from the syntax used to format it

3. . number indicates the desired precision

4. A letter indicates the presentation type


```python
from IPython.display import Image, display

# Define the URL for the image
url = "https://raw.githubusercontent.com/nushratea/Project-Data/main/Data%20Visualization%20Examples/Python/Python%20Basics%20for%20J.Notebook/strings.png"

# Display the image
display(Image(url=url))

```


<img src="https://raw.githubusercontent.com/nushratea/Project-Data/main/Data%20Visualization%20Examples/Python/Python%20Basics%20for%20J.Notebook/strings.png"/>



```python
num = 1000.987123
f'{num:.2f}'
```


```python
from IPython.display import Image, display

# Define the URL for the image
url = "https://raw.githubusercontent.com/nushratea/Project-Data/main/Data%20Visualization%20Examples/Python/Python%20Basics%20for%20J.Notebook/stringpresentation.png"

# Display the image
display(Image(url=url))

```


<img src="https://raw.githubusercontent.com/nushratea/Project-Data/main/Data%20Visualization%20Examples/Python/Python%20Basics%20for%20J.Notebook/stringpresentation.png"/>



```python
num = 1000.987123
print(f'{num:.3e}')

decimal = 0.2497856
print(f'{decimal:.4%}')
```

### String Methods

As one of the primary object classes in Python, strings have many built-in methods designed to facilitate working with them. There are too many of these methods to cover all of them here in-depth, but some of the most useful include:

#### str.count(sub[, start[, end]])

Return the number of non-overlapping occurrences of substring sub in the range [start , end].


```python
my_string = 'Happy birthday'

print(my_string.count('y'))
print(my_string.count('y', 2, 7))
```

#### str.find(sub)

Return the lowest index in the string where substring sub is found. Return -1 if sub is not found.


```python
my_string = 'Happy birthday'

my_string.find('birth')
```

#### str.join()

Return a string which is the concatenation of the strings in iterable. The separator between elements is the string providing this method.


```python
separator_string = ' '
iterable_of_strings = ['Happy', 'birthday', 'to', 'you']

separator_string.join(iterable_of_strings)
```

#### str.partition(sep)

Split the string at the first occurrence of sep , and return a 3-tuple containing the part before the separator, the separator itself, and the part after the separator. If the separator is not found, return a 3-tuple containing the string itself, followed by two empty strings.


```python
my_string = 'https://www.google.com/'

my_string.partition('.')
```

#### str.replace(old, new[, count])

Return a copy of the string with all occurrences of substring old replaced by new. If the optional argument count is given, only the first count occurrences are replaced.


```python
my_string = 'https://www.google.com/'

my_string.replace('google', 'youtube')
```

#### str.split([sep])

Return a list of the words in the string, using sep (optional) as the delimiter string. If no sep is given, whitespace characters are used as the delimiter. Any number of consecutive whitespaces would indicate a split point, so ' ' (a single whitespace) would split the same way as '   ' (two or more whitespaces).


```python
my_string = 'Do you know the muffin man?'

my_string.split()
```

### Regular Expressions

Regular expressions, also known as regex, refer to techniques that advanced data professionals use to modify and process string data. This certificate program will not require you to use regular expressions in your work, but it’s important for you to be aware of the concept. As always, you’re encouraged to explore regular expressions on your own. 

Regex works by matching patterns in Python. It allows you to search for specific patterns of text within a string of text. Regex is used extensively in web scraping, text processing and cleaning, and data analysis. 

The first step in working with regular expressions is to import the re module. This module provides the tools necessary for working with regular expressions. Once you have imported the module, you can start working with regular expressions.


The basic syntax and example for a regular expression is:


```python
import re

my_string = 'Three sad tigers swallowed wheat in a wheat field'

re.search('wall', my_string)
```

This example returns a match object that contains information about the search. In this case, it tells you that the substring ‘wall’ does occur in the string from indices 18–22. 

Regex is especially useful because it allows you a very high degree of customization when performing your searches. 

Regex has a large catalog of special expressions that let you search for substrings that will only match if, for example, they are followed by certain characters, or if they don’t contain a certain set of characters. It can get very complex. Depending on the work you do as a data professional, you may find yourself exploring regular expressions to analyze and process your data.

### Key takeaways

String formatting is the process of inserting specific substrings into designated places within a larger string. Often, the inserted substrings get processed and formatted a certain way. There are multiple ways of using string formatting to help you process strings. These include the format() method, literal string interpolations—or f-strings—and regular expressions, also known as regex. The methods you use will depend on what your data demands and your own personal preferences, but it’s important to be familiar with the most common techniques used by data professionals.

## Task 1: Check and change data types

Now that you have experience in marketing, you've moved on to market research. Your new task is collecting store data for future analysis. In this task, you're given a four-digit numeric store ID stored in a variable called `store_id`.

1.  Convert `store_id` to a string and store the result in the same variable.
2.  Confirm the type of `store_id` after the conversion.



```python
store_id=1101

store_id=str(store_id)
print(type(store_id))
```

## Task 2: String concatenation

As you continue gathering data, you realize that the `store_id` variable is actually the ZIP Code where the store is located, but the leading `0` has been cut off.

*  Define a function called `zip_checker` that accepts the following argument:
    *  `zipcode` - a string with either four or five characters

*  Return:
    *  If `zipcode` has five characters, and the first two characters are NOT `'00'`, return `zipcode` as a string. Otherwise, return `'Invalid ZIP Code.'`. (ZIP Codes do not begin with 00 in the mainland U.S.)
    *  If `zipcode` has four characters and the first character is NOT `'0'`, the function must add a zero to the beginning of the string and return the five-character `zipcode` as a string.
    *  If `zipcode` has four characters and the first character is `'0'`, the function must return `'Invalid ZIP Code.'`.

*Example:*

```
 [IN] zip_checker('02806')
[OUT] '02806'

 [IN] zip_checker('2806')
[OUT] '02806'

 [IN] zip_checker('0280')
[OUT] 'Invalid ZIP Code.'

 [IN] zip_checker('00280')
[OUT] 'Invalid ZIP Code.'
```

**Note that there is more than one way to solve this problem.**


```python
def zip_checker (zipcode): 
    if len(zipcode) == 5:
        if zipcode[0:2] =='00':
            return 'Invalid ZIP Code.'
        else:
            return zipcode
    elif zipcode[0] != '0':
        zipcode = '0' + zipcode
        return zipcode
    else:
        return 'Invalid ZIP Code.'

print(zip_checker('02806'))     # Should return 02806.
print(zip_checker('2806'))      # Should return 02806.
print(zip_checker('0280'))      # Should return 'Invalid ZIP Code.'
print(zip_checker('00280'))     # Should return 'Invalid ZIP Code.'
```

## Task 3: Extract the store ID

Now imagine that you've been provided `url`, which is a URL containing the store's actual ID at the end of it.

1.  Extract the seven-character store ID from the end of `url` and assign the result to a variable called `id`.
2.  Print the contents of `id`.


```python
url = "https://exampleURL1.com/r626c36"

# 1. ### YOUR CODE HERE ###
id = url[-7:]

# 2. ### YOUR CODE HERE ###
print(id)
```

## Task 4: String extraction function

You have many URLs that contain store IDs, but many of them are invalid&mdash;either because they use an invalid protocol (the beginning of the URL) or because the store ID is not seven characters long.

*  The correct URL protocol is `https:` Anything else is invalid.
*  A valid store ID must have exactly seven characters.



Define a function called `url_checker` that accepts the following argument:
*  `url` - a URL string

Return:
*  If both the protocol and the store ID are invalid:
    * print two lines: <br/>
    `'{protocol} is an invalid protocol.'` <br/>
    `'{store_id} is an invalid store ID.'` <br/>
*  If only the protocol is invalid:
    * print: <br/>
    `'{protocol} is an invalid protocol.'` <br/>
*  If only the store ID is invalid:
    * print: <br/>
        `'{store_id} is an invalid store ID.'` <br/>
*  If both the protocol and the store ID are valid, return the store ID.

In the above cases, `{protocol}` is a string of the protocol and `{store_id}` is a string of the store ID.

*Example:*

```
 [IN] url_checker('http://exampleURL1.com/r626c3')
[OUT] 'http: is an invalid protocol.'
      'r626c3 is an invalid store ID.'

 [IN] url_checker('ftps://exampleURL1.com/r626c36')
[OUT] 'ftps: is an invalid protocol.'

 [IN] url_checker('https://exampleURL1.com/r626c3')
[OUT] 'r626c3 is an invalid store ID.'

 [IN] url_checker('https://exampleURL1.com/r626c36')
[OUT] 'r626c36'
```

**Note that there is more than one way to solve this problem.**


```python
# Sample valid URL for reference while writing your function:
url = 'https://exampleURL1.com/r626c36'

### YOUR CODE HERE ###
def url_checker(url):
    url = url.split('/')
    protocol = url[0]
    store_id = url[-1]
    # If both protocol and store_id bad
    if protocol != 'https:' and len(store_id) != 7:
        print(f'{protocol} is an invalid protocol.',
            f'\n{store_id} is an invalid store ID.')
    # If just protocol bad
    elif protocol != 'https:':
        print(f'{protocol} is an invalid protocol.')
    # If just store_id bad
    elif len(store_id) != 7:
        print(f'{store_id} is an invalid store ID.')
    # If all ok
    else:
        return store_id
                                                # Should return:
url_checker('http://exampleURL1.com/r626c3')    # 'http: is an invalid protocol.'
print()                                         # 'r626c3 is an invalid store ID.'

url_checker('ftps://exampleURL1.com/r626c36')   # 'ftps: is an invalid protocol.
print()
url_checker('https://exampleURL1.com/r626c3')   # 'r626c3 is an invalid store ID.'
print()
url_checker('https://exampleURL1.com/r626c36')  # 'r626c36'
```

## Conclusions
**What are your key takeaways from this lab?**
* Strings are instrumental in storing important data, such as unique identifiers.
* String concatenation helps you combine data that is stored in different strings.
* String formatting is useful when inserting specific values into reusable string templates.
* Functions boost efficiency by reusing code for repeated tasks.
