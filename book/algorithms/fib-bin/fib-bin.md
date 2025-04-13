# Fibbinary Strings Relay Race

## 🎯 Learning Objectives
By the end of this activities, students should be able to:
1. Recognize how overlapping subproblems emerge in recursive counting problems (e.g., fibbinary strings).
2. Understand the advantage of storing and reusing computed values rather than recomputing everytime (i.e., the motivation for dynamic programming).

## 🧰 Materials / Props
- [Relay race "batons"](./fib-bin-baton.pdf): Tables to be filled by the groups. 

## 🕹️ Activity Walkthrough

**Time:** 8-10 minutes

**Setup:**
- Rearrange the students so that every row has about the same number of students. 
- Introduce _fibbinary numbers_ and _fibbinary strings_:
    > _Fibbinarry numbers_ are integers whose binary representation does not contain two consecutive 1s. Borrowing this concept, we define Fibbinary strings as binary strings that do not contain two consecutive 1s. 
- Prompt the students to compute $C(1), C(2), \ldots, C(n)$, where $C(\ell)$ is the number of unique Fibbinary strings of length $\ell$ and $n$ is the number of students in the row. 
- Give them two minutes to discuss the strategy before starting the race. You may give the following hint:
    > Think about how you can extend the fibbinary strings of length 3 to form fibbinary strings of length 4 (e.g., 000 becomes 0000 or 0001).
- Instructions on slide: 
    > - Each person in the row computes $C(i)$, where $i$ corresponds to your position in the row from the left.
    > - The last person fill up $C(n)$ and submit the table, where $n =$ number of people in the row.
    > - Write your uniqname next to the value you computed.
    > - The first row to compute $C(n)$ wins!.

**💡Facilitating Tips:**
- Set a fixed target length $n$ for _every_ group. If a group has fewer than $n$ people, some students will have to compute multiple values (e.g., one person does $C(5)$ and $C(6)$). 
- Emphasize strategy over brute-force. Say something like "You _could_ try listing out all valid strings, but that’s slow. Is there a smarter way to compute the next value from previous ones?"
- Make sure students are not using any electronic devices (including calculators) during the race. 

## 📘 Instructor's Solution

The number of unique fibbinary strings of lengths 1 through 13:

| $\ell$     | 1 | 2 | 3 | 4 | 5 | 6  | 7  | 8  | 9   | 10  | 11    | 12    | 13 |
|------------|---|---|---|---|---|----|----|----|-----|-----| -----|-----|-----|
| $C(\ell)$  | 2 | 3 | 5 | 8 | 13 | 21 | 34 | 55 | 89  | 144 | 233 | 377 | 610 |

Here, we discuss a more general solution (and eventually lead to the recurrence relation).

- A binary string of length $\ell \geq 2$ must either end with a 1 or a 0.
- From length $\ell -1$ to length $\ell$, if we want to extend with a 0:
    - No restriction on the $(\ell -1)$-th bit.
    - The remaining string has length $\ell -1$.
    - The remaining string must have no consecutive occurrences of a 1 (we computed this number already!)
- From length $\ell -1$ to length $\ell$, if we want to extend with a 1:
    - The $(\ell -1)$-th bit must be a 0.
    - The remaining string has length $\ell - 2$.
    - The remaining string must have no consecutive occurrences of a 1 (we computed this number already!)
- Putting everything together

    $$

        C(\ell) = C(\ell -1) + C(\ell -2).

    $$

## 💬 Students' Feedback
  _These feedbacks are collected from my midterm/final teaching evaluation, on "which classroom activity was your favorite or most helpful and why?"_
  - "D3, I thought it was a fun way to interact with classmates and solve a problem"
  - "I liked the Fibbinary Strings Relay Race because it was an easy way to get introduced into recursive cases and I won a duck!"
  - "D3: Fibbinary Strings Relay Race was really fun!"
  - "D3 was the most helpful because you explained how to solve the problem in a very clear way for me"

## 📝 Eric's Notes
- This activity is an improved version of the one I ran in Fall 24, 
    - That version asked students to draw a tree of all fibbinary strings of length 3 and 4, then use the patterns they observed to compute $C(5)$ — but without explicitly expanding the tree for length 5.
    - It was underwhelming and felt more like a worksheet than a dynamic activity.
- The relay race format in Winter worked _much better_, especially after adapting it to the classroom's seating. 
    - It created natural urgency and forced collaboration, as each student had to understand the recurrence well enough to explain or build on it quickly.
    - It also encouraged peer teaching, since teammates had to explain their insights to each other on the fly.
- I ran this activity twice in Winter 25:
    - In Section 21, the students were engaged and competitive — the energy was great.
    - In Section 13 (which I covered for another IA), the energy was more muted. Students were shy and less cooperative, so the activity didn’t land quite as well — possibly a good case for pairing it with an icebreaker beforehand.