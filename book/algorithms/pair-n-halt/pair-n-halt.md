# Pair & Halt

## 🎯 Learning Objectives
By the end of this activities, students should be able to:

1. Practice recognizing halting behavior in code by analyzing control flow.
2. Build intuition for how `if-else` logic can ensure halting regardless of input.
3. Practice with the potential method as a way to reason about whether an algorithm will eventually halt.

## 🧰 Materials / Props
- [Code snippet](./code-snippets.pdf): Each student receives either an “if-block” or “else-block” snippet. Below is the version used in Winter 25. 

<table>
  <tr valign="top">
    <td style="padding: 20px;"><strong>if-block A</strong><br>
      <pre><code>if z is even then
    z ← x - 1
    y ← y + 1</code></pre>
    </td>
    <td style="padding: 20px;"><strong>if-block B</strong><br>
      <pre><code>if x is odd then
    x ← x + 1</code></pre>
    </td>
    <td style="padding: 20px;"><strong>if-block C</strong><br>
      <pre><code>if z < 5 then
    x ← x - 2
    y ← y + 1</code></pre>
    </td>
  </tr>
  <tr valign="top">
    <td style="padding: 20px;"><strong>else-block A</strong><br>
      <pre><code>else
    y ← y - 1</code></pre>
    </td>
    <td style="padding: 20px;"><strong>else-block B</strong><br>
      <pre><code>else
    x ← x + 1
    y ← y - 1</code></pre>
    </td>
    <td style="padding: 20px;"><strong>else-block C</strong><br>
      <pre><code>else
    x ← x - 2</code></pre>
    </td>
  </tr>
</table>

## 🕹️ Activity Walkthrough
### Part 1: Pair and Icebreak!

**Time:** 3-5 minutes

**Setup:**
- As students walk in, hand each person a card with either an “if-block” or “else-block” snippet.
- Instructions on the slide:
    > If you have an "if-block", find someone with an "else-block" (and vice versa) so that, when combined, your code snippets ensure this program will always halt **regardless of user's input**.
    > ```plaintext  
    > x ← user's input
    > x ← user's input
    > while x > 0 and y > 0 do
    >   z ← user's input
    >   [if-block]
    >   [else-block]
    > ```

**💡Facilitating Tips:**
- Encourage students to reason _informally_ about how the control flow plays out.
- Emphasize what “regardless of user’s input” really means — for example, the user could always input values that try to make the loop run forever. A correct pair must ensure the loop still halts no matter what values the user chooses for `x`, `y`, and `z`. 
- Circulate and listen for natural language justifications like “it always decreases `x` eventually” or “this guarantees `y` gets to 0.”

### Part 2: Prove It with Potential!

**Time:** 8-10 minutes

**Setup:**
- Let students keep their runtime cards and stay with their partner from Part 1.
- After reviewing the concepts (and most importantly, the requirements) of potential functions, prompt the students to formally prove their combined program always halts
- Instructions on the slide:
> - Identify a potential function $s$ that maps the current state $(x,y)$ to a non-negative integer.
> - Define a "time unit" such that $s$ stricyly decreases on each time unit.
> - Justify that $s$ has a lower bound, otherwise the program must terminate. 

**💡Facilitating Tips:**
- Suggest common potential functions that are linear combination of the two variables. 
- Emphasize that the time unit doesn't always have to be one iteration of the for-loop, _they define the time unit_. 
- Wrap up the discussion with a general linear combination approach (see instructor's solution), but stress that this is not the only way and this approach may not be applicable (and usually not) to more complex problems (take EECS 477!).


## 📘 Instructor's Solution

See detailed solution [here](./pair-n-halt-sol.pdf).

<!-- ## 💬 Students' Feedback
  _These feedbacks are collected from my midterm/final teaching evaluation, on "which classroom activity was your favorite or most helpful and why?"_ -->

## 📝 Eric's Notes
- First tried in Fall 24 in BBB 1690 — great room for students to move around and find a partner to make the algorithm halt.

- In Winter 25, I had EECS 1005 — a mini lecture hall–style room. It was a bit harder for students to circulate, so the energy wasn’t quite the same, but still worked decently if you encouraged vocal pairing.

- This activity inspired an exam question on the Winter 2025 midterm, which asked students to analyze a randomized halting process involving “maize” and “blue” particles. In each time unit, one of the following reactions must occur at random:
    - **Fusion**: Two maize particles combine to form one blue particle.
    - **Decay**: One blue particle destabilizes and transforms into one maize particle.

    I also made a [simulation for this reaction](https://erickhiu.github.io/chaoticpotential/). Future staff may show this to the students and make them observe that if we start with nonzero number of particles, it will always terminate with exactly one maize particle. Therefore, the lower bound for any linear combination potential function is the coeficient of the variable corresponds to the number of maize particle. 