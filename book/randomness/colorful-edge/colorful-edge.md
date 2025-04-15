# Colorful Edges

## 🎯 Learning Objectives
By the end of this activity, students should be able to:
1. Apply random processes to color a graph and analyze properties that arise from them.
2. Define and compute expectations using indicator variables and linearity of expectation.
3. Understand how uniform randomness and symmetry can simplify combinatorial probability

## 🧰 Materials / Props
- [Coloring worksheet](./coloring-ws.pdf)
- Colored penciles
- Fair 6-sided die

## 🕹️ Activity Walkthrough

**Time**: 8-10 minutes

**Setup**:
- Have students form groups of 3–4.
- Distribute a die and three colored pencils to each group.

### Part 1: Random Coloring
1. Each student takes turns rolling the die for each vertex.
2. Let the die roll be $x$; assign the vertex color $c_{x \bmod 3}$. 
3. Once all vertices are colored, count the number of colorful edges—edges whose endpoints have different colors.

### Part 2: Expected Number of Colorful Edges
1. Guide students towards treating this as a probability problem and compute the expected number of colorful edges for any random coloring. 
2. Prompt students to generalize the result to graphs of arbitrary number of edges. 

**💡Facilitating Tips**:
- Collect the number of colorful edges from the groups and compute the empirical average. Ask students to compare that with what they calculated. 
- Wrap up the activity by introducing the optimization version of this problem: 3-color a graph to maximize the number of colorful edges and derive the approximation ratio. 

## 📘 Instructor's Solution

For each edge $e$, define an IRV indicating whether $e$ is colorful under the random coloring. For each edge, there are $3 \cdot 3 = 9$ possible coloring, 3 of them have same colors on both ends (6 of them have different colors), so

$$

    \Pr[X_e = 1] = \frac{6}{9} = \frac{2}{3}

$$

Let $X$ be the number of colorful edges. By linearity of expectation,

$$

    \mathbb{E}[X] = \sum_{e \in E} \mathbb{E}[X_e] = \frac{2}{3} |E|

$$

## 📝 Eric's Notes
- First ran this in Winter 2025 — a light and engaging activity that worked well in small groups. 
- One student even coded up a quick simulation on the spot to improve the empirical average, which led to a great side discussion. Future staff could consider doing the same thing. 

