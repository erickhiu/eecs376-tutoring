# Asymptotic Pairs

## 🎯 Learning Objectives

By the end of this activities, students should be able to:
1. Break the ice and start forming community in the discussion section by engaging in a light and collaborative task.
2. Review asymptotic notation concepts from EECS 203, including Big-O, Big-Omega, and Big-Theta.
3. Identify and correct common misconceptions about asymptotic growth (e.g., upper bound vs worst case)

## 🧰 Materials / Props
- [Nameplates](./nameplate.pdf) and markers for students to write their names. 
- [Runtime cards](./runtime-card.pdf): Printed cards with $O(n^2)$, $\Theta(n^2)$, $O(n \log n)$, $\Theta(n \log n)$.

## 🕹️ Activity Walkthrough
### Part 1: Pair and Icebreak!

**Time**: 3-5 minutes

**Setup**: 
- As students walk in, have pick a runtime card.
- Instructions on the board or slide:
  > - If you have an $n^2$ card, find someone with an $n \log n$ card.
  > - If you have an $n \log n$ card, find someone with an $n^2$ card.
  > - Introduce yourself! Name, major, favorite duck (just kidding... unless you're serious).

**💡Facilitating Tips**:
- Make sure no student is left out—if there’s an odd number, invite them to form a group of three.
- You can ask follow-ups like: "Is $n \log n$ always better?" or "Would context ever flip your answer?"
- Circulate the room and encourage informal discussion. Gently redirect any misconceptions that come up.

### Part 2: True, False, or Not Necessary Either?

**Time**: 8-10 minutes

**Setup**
- Let students keep their runtime cards from Part 1.
- Tell students to identify their algorithms:
  > - If you have an $n^2$ card, you are holding the worst-case asymptotic runtime of algorithm $A$. 
  > - If you have an $n \log n$ card, you are holding the worst-case asymptotic runtime of algorithm $B$. 
- Explain how the activity works:
  > You will see a series of statements about the two algorithms. Each statement can be **necessarily true**, **necessarily false**, or **not necessarily either**. 
- For each statement
  1. Students discuss with their partner for about 1-2 minutes.
  2. After discussion, they vote by raising/lowering cards: 
      - Necessarily True: Both partners raise their cards
      - Necessarily False: Both partners keep cards down
      - Not Necessarily Either: Only one partner raises their card (either A or B)
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
