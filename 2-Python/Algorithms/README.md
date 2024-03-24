### Algorithm Techniques

[PDF](https://www.cs.cmu.edu/afs/cs/academic/class/15210-s14/www/lectures/intro.pdf)

#### Brute Force

- start by identifying the structure of expected results and a way to assign values to them

#### Reducing to another problem

#### Inductive techniques

- solving subproblems (i.e. recursion)
  - Divide and conquer - subproblems are independent
     - Base Case
     - Inductive Step
  - Greedy
  - Contraction
  - Dynamic programming

#### Randomization

### What makes a good solution?

Correct & low cost

### Backtracking

Pruning in backtracking:
- forward checking
- backjumping

### Dynamic Programming

[PDF](https://www.cs.cmu.edu/afs/cs/academic/class/15210-s14/www/lectures/dp.pdf)

- one constructs the solution of a larger problem instance by composing solutions to smaller instances.
- the solution to each smaller instance can be used in multiple larger instances.

![image](https://github.com/zixi-liu/Back-End-Stuff/assets/46979228/526cd217-3fa4-4cb9-8a31-d2e4095349fc)


The top-down approach starts at the
root and uses recursion, as in divide-and-conquer, but remembers solutions to subproblems so
that when the algorithm needs to solve the same instance many times only the first call does
the work and the remaining calls just look up the solution.

The bottom-up approach starts at the leaves of the DAG and typically processes the DAG in some form of level order traversal—for example, by processing all problems of
size 1 and then 2 and then 3, and so on. 

In summary the approach to coming up with a dynamic programming solution to a problem
is as follows.
1. Is it a decision or optimization problem?
2. Define a solution recursively (inductively) by solving smaller problems.
3. Identify any sharing in the recursive calls, i.e. calls that use the same arguments.
4. Model the sharing as a DAG, and calculate the work and span of the computation based on
the DAG.
5. Decide on an implementation strategy: either bottom up top down, or possibly shortest
paths.
