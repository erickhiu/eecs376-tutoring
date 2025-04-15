# TangraM

## 🎯 Learning Objectives
By the end of this activity, students should be able to:
1. Construct complex Turing machines by composing simple subroutines.
2. Understand how subroutine composition can realize desired computational properties.
3. Feeling comfortable with the "creating machines within machines" Turing reduction problems. 

## 🧰 Materials / Props
- [Tangram set](./Tangram.pdf): A Turing machine skeleton and a collection of subroutines. Winter 25 version: 
    ```
    function M'(w):
      if condition X is true then
        call [ ? ]
      else
        call [ ? ]
    ```
    <table>
      <tr valign="top">
        <td style="padding: 20px;"><strong>Subroutine A</strong><br>
          <pre><code>function A(a):
      accept</code></pre>
        </td>
        <td style="padding: 20px;"><strong>Subroutine B</strong><br>
          <pre><code>function B(b):
      reject</code></pre>
        </td>
        <td style="padding: 20px;"><strong>Subroutine C</strong><br>
          <pre><code>function C(c):
      loop</code></pre>
        </td>
      </tr>
      <tr valign="top">
        <td style="padding: 20px;"><strong>Subroutine D</strong><br>
          <pre><code>function D(d):
      if d = ε then
        accept
      else
        reject</code></pre>
        </td>
        <td style="padding: 20px;"><strong>Subroutine E</strong><br>
          <pre><code>function E(e):
      if e ∈ {3, 7, 6} then
        loop
      else
        reject</code></pre>
        </td>
        <td style="padding: 20px;"><strong>Subroutine F</strong><br>
          <pre><code>function F(f):
      if 1 = 0 then
        reject
      else
        accept</code></pre>
        </td>
      </tr>
    </table>


## 🕹️ Activity Walkthrough

**Time**: 8-10 minutes

**Setup**:
1. Introduce the TangraM analogy: just like geometric tangrams form complex shapes from simple pieces, we’re building a Turing machine by combining simple subroutines.
2. Explain that students will pick subroutines (from functions A–F) to fill in each block in the skeleton so that the machine M′ exhibits the required behavior.

    > **Exercise 1: Accept All vs Not Accept All**
    > - If condition X is true, then M' accepts all inputs.
    > - If condition X is false, then M' does not accept all inputs.
    
    > **Exercise 2: Accept Finite vs. Infinite Inputs**
    > - If condition X is true, then M' accepts a finite number of inputs.
    > - If condition X is false, then M' accepts an infinite number of inputs. 


**💡Facilitating Tips**:
- Remind students that multiple solutions exist, and encourage them to come out with different combinations that work. 
- Ask them to describe why their chosen subroutines meet the “accept all” or “accept infinitely many” criteria.

## 📘 Instructor's Solution

1. Use any of `A` or `F` for the if case (always accept); use any of `B`, `C`, `D`, or `E` for the else case (does not always accept). 
2. Use any of `B`, `C`, `E` (accepts no inputs which is finite) or `D` (accepts one input) for the if case; use any of `A` or `F` for the else case (accepts infinitely many inputs). 

## 📝 Eric's Notes
- First ran in Winter 2025. Conceptually strong and pairs well with the discussion on Turing reductions.
- Consider enhancing the experience with:
    - Physical cards for subroutines A–F, letting students physically "build" M'.
    - A drag-and-drop digital interface, similar to EECS 280 online exams, where students compose and test logic combinations.
- The current subroutines are functional but a bit plain—future iterations could include more creative or surprising behaviors (e.g., subroutines with stateful branching or multiple acceptance paths).


