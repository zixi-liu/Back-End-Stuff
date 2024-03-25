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

### Math 
**两数之和**
- Brute Force O(n^2), O(1)
- Two Pointers O(nlogn)
- Hashmap O(n), O(n)

**三数之和**
- Two Pointers: 先对数组进行一次排序，一层循环固定一个元素，循环内部利用双指针找出剩下两个元素。O(n^2)

**四数之和**
- Brute Force& Backtrack, O(n^4), O(n^4)
- Divide and Conquer, twoSum(a, threeSum(A))

**四数之和II**
- 使用mapper存储A和B两两相加的结果，O(n^2), O(n)

**最接近的三数之和**
- 用res存储三数之和，O(n^2)

**最大子序列和**
- Brute Force, O(n^2), O(1)
- Divide and Conquer, O(nlogn), O(logn)
- Dynamic Programming, O(n), O(1)
- Prefix Sum, O(n), O(1)

**最大数**
- functools.cmp_to_key(), O(nlogn), O(n)

**分数到小数**
- divmod(remainder*10, abs(denominator), O(denominator), O(denominator)

### DFS & BFS

**Binary Tree Inorder Traversal**
```
def inorder(root):
    if not root:
        return []

    inorder(root.left)
    result.append(root.val)
    inorder(root.right)
    return result
```
**Binary Tree Preorder Traversal**
```
def preorder(root):
    if not root:
        return []

    result.append(root.val)
    preorder(root.left)
    preorder(root.right)
    return result
```
**Binary Tree Postorder Traversal**
```
def postorder(root):
    if not root:
        return []

    postorder(root.left)
    postorder(root.right)
    result.append(root.val)
    return result
 ```
   
**路径总和**



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
