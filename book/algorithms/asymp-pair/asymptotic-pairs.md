# Asymptotic Pairs

## 🎯 Learning Objectives

By the end of this activities, students should be able to:
1. Break the ice and start forming community in the discussion section by engaging in a light and collaborative task.
2. Review asymptotic notation concepts from EECS 203, including Big-O, Big-Omega, and Big-Theta.
3. Identify and correct common misconceptions about asymptotic growth (e.g., worst case vs upper bound vs tight bound).

## 🧰 Materials / Props
- [Nameplates](./nameplate.pdf) and markers for students to write their names. 
- [Runtime cards](./runtime-card.pdf): Printed cards with $O(n^2)$, $\Theta(n^2)$, $O(n \log n)$, $\Theta(n \log n)$.

## 🕹️ Activity Walkthrough
### Part 1: Pair and Icebreak!

**Time**: 3-5 minutes

**Setup**:
- As students walk in, have pick a runtime card.
- Instructions on the slide:
  > - If you have an $n^2$ card, find someone with an $n \log n$ card.
  > - If you have an $n \log n$ card, find someone with an $n^2$ card.
  > - Introduce yourself! Name, major, favorite duck (just kidding... unless you're serious).

**💡Facilitating Tips**:
- Make sure no student is left out—if there’s an odd number, invite them to form a group of three.
- You can ask follow-ups like: "Is $n \log n$ always better?" or "Would context ever flip your answer?"
- Circulate the room and encourage informal discussion. Gently redirect any misconceptions that come up.

### Part 2: True, False, or Not Necessary Either?

**Time**: 8-10 minutes

**Setup**:
- Let students keep their runtime cards from Part 1.
- After reviewing the definitions of asymptotic notations, tell students to identify their algorithms:
  > - If you have an $n^2$ card, you are holding the worst-case asymptotic runtime of algorithm $A$. 
  > - If you have an $n \log n$ card, you are holding the worst-case asymptotic runtime of algorithm $B$. 
- Explain how the activity works:
  > You will see a series of statements about the two algorithms. Each statement can be **necessarily true**, **necessarily false**, or **not necessarily either**. 
- For each statement
  1. Students discuss with their partner for about 1-2 minutes.
  2. After discussion, they vote by raising/lowering cards: 
      - Necessarily true: Both partners raise their cards
      - Necessarily false: Both partners keep cards down
      - Not Necessarily either: Only one partner raises their card (either A or B)
  3. Ask a few pairs to explain their reasoning aloud.
- Statements to display:
  > 1. On the same computer and the same input of size $n$, $B$ runs faster than $A$ for all $n$. 
  > 2. For all large enough $n$, there exists an input of size $n$ where $B$ funs faster than $A$. 

**💡Facilitating Tips**:
- Make sure to explain the differences between "necessarily false" and "not necessarily either". You may use the following examples: 
  > - **Necessarily false**: If $x$ and $y$ are both even, then $x+y$ is odd. 
  > - **Not necessarily either**: If $x + y$ is an even number, then $x$ and $y$ are both even.  
- If the students think the answer is "not necessarily either," prompt them to come out with two examples, where the statement holds for one and fails for another. 
- Wrap up the discussion with the formal definitions of asymptotic notations and emphasize that big-$O$ is only a _bound from above_ (and similarly big-$\Omega$ is only a _bound from below_).

## 📘 Instructor's Solution

Some parts of this activity appear in the homework, so we will only provide solutions for a subset of the pairs here.

1. On the same computer and the same input of size $n$, $B$ runs faster than $A$ for all $n$. 

    - For $T_A(n) = \Theta(n^2)$ and $T_B(n) = O(n \log n)$, the statement is **not necessarily true or false**. 
      - **True example**: Suppose $T_A(n) = n^2$ and $T_B(n) = n \log n$. For $n > 0$, we have

        $$
            T_A(n) > T_B(n),
        $$

        so $B$ runs faster than $A$ for all $n$. 
      - **False example**: Suppose $T_A(n) = n^2$ and $T_B(n) = 376 n \log_2 n$. For $n = 2$, we have 

        $$
            T_A(n) = 4 < 752 = 376 n \log_2 n = T_B(n),
        $$

        so $B$ does not run faster than $A$ for all $n$. 
    
    - For $T_A(n) = O(n^2)$ and $T_B(n) = \Theta(n \log n)$, the statement is **not necessarily true or false**. 
      - **True example**: We can use the same true example as above. 
      - **False example**: We can also use the same false example as above. Here we use a more extreme example to illustrate that big-$O$ is _merely an upper bound_, which says nothing about the lower bound of the runtime. Suppose $T_A(n) = 1$ and $T_B(n) = n \log_2 n$. For $n > 1$, we have 

        $$
            T_A(n) = 1 < n \log_2 n = T_B (n),
        $$

        so $B$ does not run faster than $A$ for all $n$. 

2. For all large enough $n$, there exists an input of size $n$ where $B$ runs faster than $A$. 

    - For $T_A(n) = \Theta(n^2)$ and $T_B(n) = \Theta(n \log n)$, the statement is **necessarily true**. 
      - By definition, $\Theta(\cdot)$ means both $O(\cdot)$ and $\Omega(\cdot)$. Importantly, $T_A(n) = \Omega(n^2)$ and $T_B(n) = O(n \log n)$. Therefore, $B$ is faster than $A$ on all $A$'s large enough worst-case inputs (the threshold $n_0$ depends on the constant multiples). 

    - For $T_A(n) - O(n^2)$ and $T_B(n) = O(n \log n)$, the statement is **not necessarily true or false**.
      - **True example**: Again, we emphasize that $O(\cdot)$ is _merely an upper bound_. Suppose $T_A(n) = n^2$ and $T_B(n) = 1$, $B$ runs faster than $A$ on all large enough inputs (in fact, all input of size $n > 1$) and hence there exists a large enough input where $B$ runs faster than $A$. 
      - **False example**: We can construct a counterexample using similar logic: Suppose $T_A(n) = 1$ and $T_B(n) = n \log n$, then $A$ runs faster than $B$ for all input of size $n > 1$. 

## 💬 Students' Feedback
  _These feedbacks are collected from my midterm/final teaching evaluation, on "which classroom activity was your favorite or most helpful and why?"_

  - "D1: Asymptotic Pairs was the most helpful for homework."

## 📝 Eric's Notes
- I first ran this activity in Winter 2025. I was fortunate to have an active and engaged group of students, which made the session lively and interactive.

- The class size turned out to be larger than I had anticipated, so I underprepared the runtime cards. My emergency plan was to hand out markers and have students quickly create their own cards on the spot.

- The card-raising portion was a bit chaotic—students weren’t always sure when or how to raise their cards. Future staff may consider a “traffic light” system instead:
  - 🟢 Green = Necessarily True
  - 🔴 Red = Necessarily False
  - 🟠 Orange = Not Necessarily Either
