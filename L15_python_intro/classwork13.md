# Classwork 14

## Install Anaconda

If you can't find the "Anaconda-Navigator" Application on your computer, you should install it. 

1. Click the "Download" button here: https://www.anaconda.com/. Note, if this download doesn't work, you can click "Get Additional Installers" under the download button to find more versions to try.
2. Install Anaconda from the downloaded file. You can choose the default options during the install. Make a note of where Anaconda is getting installed.
3. Once installation is complete, you should be able to find the "Anaconda-Navigator" application on your computer. If you have trouble with this, try following the instructions here: https://docs.anaconda.com/navigator/getting-started/.

## Launching Jupyter Notebooks

1. Open Anaconda-Navigator.
1. Click "Launch" in the Jupyter Notebook box. It will launch Jupyter Notebook in your default browser.
1. Navigate to the folder where you want to create a notebook, and choose "New" --> Python 3 (ipykernel) to launch a new notebook.
1. Rename the notebook by clicking on the current title ("Untitled").
1. **(CW) You will submit this file in your classwork assignment for today's class.**

## Using a Jupyter Notebook

Each section of a notebook is called a "cell" or a "block."
1. **(CW) Create a new Markdown block: To add a new code block, press "+" under the title of your notebook. Choose "Markdown" in the drop-down menu of the same toolbar.**
1. **(CW) Write something in your Markdown block and format it. To format a text block, press shift-enter, or press the "run" button (the triangle) in the notebook's toolbar, or shift-enter. You can use the same Markdown formatting rules we used for R Markdown (e.g. # for headers).**
1. **(CW) Create a new code block: To add a new code block, press "+" under the title of your notebook. Make sure "Code" is chosen in the drop-down menu of the same toolbar.**
1. **(CW) Running a code block is the same process as formatting a text block. Write `print("hello world!")` in your code block, and run it by pressing the "run" button (the triangle) in the notebook's toolbar, or pressing shift-enter. You should see the output "hello world!" below the cell.**
1. **(CW) Add a new code block, write the code `x = 0` in it, and `print(x)`. Run this code block.**
1. **(CW) Variables are shared across a whole notebook. Whenever the notebook is restarted, all variable values are lost. Create a code block that adds one to x and prints x:** 
   ```
   x += 1
   print(x)
   ```

   **Run it several times in a row. Add a text box below the code block, and in it explain why the value of x changes the way it does as you repeatedly run the block.**    
1. **(CW) Delete the block where you set `x = 0`: To delete a block in a notebook, click on it and click on the scissors icon in the notebook toolbar.**
1. **(CW) Whenever you re-open a notebook, all of your variables will be lost. You can "force" this to happen in your current notebook by choosing "Kernel" in the Jupyter Notebook toolbar and choosing "Restart kernel." Try doing this.**
1. **(CW) Try re-running each block of your notebook. Does an error occur? Why? Try fixing this error.**

## Practice with Python

Examples from class:
```
# to display a value, use one of the following:
print(“Hello, world!”)

display(“Hello, world!”)

“Hello, world!” # must be the last line executed in a block to be displayed

# Examples assigning variables and performing operations:
s = 5
t = 2 + 3
u = s - t
v = 10 / 3
w = 10 // 3
x = 10 % 3
y = 2**3
z = (u * v) // (w**3 % 2)

# Find the type of a variable
type(x)

# Import a library
import math

# Use a function from an imported library
math.sqrt(x)
```

| Operator | Description |
-- | --
| + | Addition |
| - | Subtraction |
| * | Multiplication |
| / | Division |
| ** | Exponent |
| % | Modulo |
| // | Floor division |

| Data type | Example |
-- | -- 
| String | “Python”, “J. Olivieri”, “Hello, world!” |
| Float | 6.2, 4.13, -3.1 |
| Integer | 3, -1, 12 |
| Boolean | True, False |

1. **(CW) Create a code cell and define a variable using at least three of the operations in the table above. Display its value using one of the methods discussed in class.**
1. **(CW) Define another variable using at least three of the other operations in the table. Display its value using one of the methods discussed in class.**
1. **(CW) Find the sum of the two variables you just defined.**
1. **(CW) Add a comment to your to the code.**
1. **(CW) Define four different variables, each of a different type (four types with examples are available in the table above). Check that each variable is the correct type with `type()`, e.g. `type(x)`.**
1. **(CW) Import the `math` package.** 
1. **(CW) Take the square root of one of your previously-defined variables using the `sqrt()` function from the math package. Remember, to use a function from a package you have to specify that package, e.g. `math.sqrt(x)`.**
1. The math package also has a function `ceil()` that rounds values to the next-highest integer. Try using it on a "float" value you defined above.
1. Define the following variables (choose their values yourself): `X1`, `X2`, `t`, `s1`, `s2`, `n1`, `n2`. Write an expression in terms of these variables to calculate the following:
   
   $$ (X_1 - X_2) + t\sqrt{\frac{s_1^2}{n_1} + \frac{s_2^2}{n_2}} $$

## Extra jupyter notebook practice
1. Assign the sum of 1 and -4 as `a`.
1. Assign the absolute value of `a` as `b` (use the `abs()` function).
1. Assign `b` minus 1 as `d`.
1. Test whether `d` is greater than 2. 
1. The Python Standard Library includes a module random containing a function `randint()`. Given two integers, `randint()` will contain an integer in that range. For example, `randint(1,6)` will return an integer between 1 and 6 (inclusive). Use this function to find a random number between 0 and 36.
1. What happens when you set a random seed with the `seed()` function before running `randint()`? Why might this function be useful? https://docs.python.org/3/library/random.html

## Looking ahead: Data and visualization in Python

We will be using pandas, matplotlib, and seaborn to load and visualize data in Python. If you have extra time, you can get a head start on using these tools. 

You can copy this code into your jupyter notebook and run it (try installing the libraries if they are not found). Then see whether you can make different scatterplots with different colorings by switching the columns assigned to `x`, `y`, and `hue`.

```
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# load data from a csv
iris = pd.read_csv("https://raw.githubusercontent.com/mwaskom/seaborn-data/master/iris.csv")

# display the dataframe
display(iris)

# create a scatterplot 
sns.relplot(data = iris, x = "sepal_length", y = "sepal_width", hue = "species")
plt.show()
```

