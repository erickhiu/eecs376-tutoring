# DFA Pictionary Challenge

## 🎯 Learning Objectives
By the end of this activities, students should be able to:
1. Interpret a language description or regular expression and construct an equivalent DFA.
2. Analyze a given DFA and describe the language it recognizes in plain English or using a regular expression.


## 🧰 Materials / Props
- [DFA pictionary cards](./dfa-pictionary.pdf): Prompt cards with a regular language description and corresponding regular expression. Below are the languages selected in Winter 2025.
  1. $L = \{b \in \{0,1\}^*: b \text{ ends with a 1} \}$. Regex: $(0|1)^*1$. 
  2. $L = \{s \in \{a,b\}^* : s \text{ contains substring }aba \}$. Regex: $(a|b)^*aba(a|b)^*$. 
  3. $L = \{s \in \{3,7,6\}^* : s \text{ is a string of length 3 } \}$. Regex: $(3|7|6)(3|7|6)(3|7|6)$. 


## 🕹️ Activity Walkthrough

**Time**: 12-15 minutes

**Setup**:
1. Divide the class into two teams.
2. Explain the rules:
    > - **Constructors and Decoders**: Each team selects three members as constructors to draw DFAs, while the rest are decoders who guess the language from the state diagram.
    > - **Construct**: Each round, both teams’ constructors receive a card with a language description and regular expression. They must draw a DFA state diagram based on it.
    > - **Decode**: Decoders can guess the language decided by the DFA at any time, describing it in English or regular expressions.
    > - **Raise Hand**: To guess, raise your hand to keep order.
    > - **Time Limit**: Each round last 3 minutes. Wrong guesses allow continued drawing and guessing.
3. Give teams 5 minutes of warm-up time to:
    - Practice drawing and decoding a few example DFA cards.
    - Discuss strategies for quickly sketching states, indicating transitions clearly, and interpreting common regex patterns.
    - Suggested examples for the warmup:
      > - $L_1$ is the language described by $(ab)^*b$. 
      > - $L_2$ is the language described by $ab^*ab$. 
      > - $L_3 = \{s \in \{a,b\}^*: s \text{ starts with } a \}$.
      > - $L_4 = \{s \in \{a,b\}^*: s \text{ has even number of }a\text{'s and ends with a }b \}$.

**💡Facilitating Tips:**
- Remind constructors that each state in a DFA represents some “memory” or summary of what has been read so far—a meaningful condition about the prefix of the string. Help them assign intuitive interpretations to states (e.g., "have seen one `a`", "haven’t seen `aba` yet") to guide their drawing.
- Encourage decoders to pay attention to structure (e.g., loops, branch patterns) to deduce patterns like "ends with", "contains", or "fixed length".
- Depending on the situation, you may allow the constructors to talk. 
- Don’t worry if no team gets the full language—partial insights are great learning moments.
- If time permits, have a bonus round with union/intersection of two languages and wrap up with product construction method. 


## 📘 Instructor's Solution
- See detailed solution [here](./dfa-sols.pdf) (along with explanation on product construction method). 


## 💬 Students' Feedback
  _These feedbacks are collected from my midterm/final teaching evaluation, on "which classroom activity was your favorite or most helpful and why?"_

  - "Pictionary challenge was really fun!"
  - "D5, I like the team work, being able to get to know fellow students, and applying the skills we learned"
  - "DFA Pictionary Challenge was fun and helpful."
  - "D5. because it helps me understand better about the concept and I also love the topic"

Note: There were two other students who voted for this activity but did not give any reasons. 

## 📝 Eric's Notes
- My FAVORITE activity in my collection (and the most voted by students too)!
- Great energy and teamwork—students actively engage in both drawing and decoding.
- When I first ran it in Fall 2024, we only had time for one round. So plan your time ahead (especially when this topic is paired with other tricky topics like greedy algorithms). 
- Make sure students are already familiar with regex and how DFAs work—otherwise participation will suffer.


