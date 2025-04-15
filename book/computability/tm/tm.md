# Turing Machines Playground

## 🎯 Learning Objectives
By the end of this activity, students should be able to:
1. Analyze and interpret Turing machines using state diagrams.
2. Visualize a Turing machine’s computation step-by-step using a simulation tool, gaining insight into how the machine processes input, transitions between states, and moves the tape head.

## 🧰 Materials / Props
- Laptop (preferred) or tablets. Remind students to bring theirs before the discussion. 

## 🕹️ Activity Walkthrough

**Time**: 8-10 minutes

**Setup**:
1. Ask students to open [turingmachime.io](https://turingmachine.io/) and nagivate to Examples/Divisble by 3. 
2. Point out that this machine does not have a reject state—input strings not divisible by 3 are simply not accepted.
3. Challenge 1: Add a reject state so that every input string is either accepted or rejected.
4. Challenge 2: Modify the machine so that it accepts a binary number $n$ if and only if $(n − 1)$ is divisible by 3. For example, strings for 1, 4, 7, 10, … should be accepted.

**💡Facilitating Tips**:
- Point out that the site uses a different character for blank. 
- Encourage students to simulate small binary numbers (e.g., `1`, `10`, `11`, `100`) step-by-step to understand what the machine is doing.
- Ask students to first identify when the machine accepts/rejects before modifying anything.
- For the second part, remind them that subtracting one from a binary number doesn’t require modifying the input—it can be encoded in the state transitions.
- Remind students that each state, similar to a DFA, encodes some memory/information about the input.

## 📘 Instructor's Solution

1. Introduce a "sink" state `q_reject` and add transitions to it for any undefined input in the original machine. Make sure all paths either reach `q_accept` or `q_reject`.
2. Since the machine accepts $n$ when $n \bmod 3 = 0$, we can shift the entire language by 1. That is, simulate $n-1$ instead of $n$—this requires adjusting the initial state transitions to "pretend" that the first symbol was preceded by one less, without modifying the tape.


## 📝 Eric's Notes
- I ran this activity from Spring 2024 through Winter 2025. I was always tempted to cut it due to time constraints, but kept it because I felt it was valuable for students to familiarize themselves with [turingmachime.io](https://turingmachine.io/) (which always end up showing up on their homework).
- In Winter 2025, I made the activity more interactive by asking a few students to present their modified machines and explain their logic to the class.


