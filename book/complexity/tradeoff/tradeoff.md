# Runtime vs. Accuracy
_This activity was discontinued in Winter 2025._

## 🎯 Learning Objectives
By the end of this activities, students should be able to:
1. Reflect on the trade-off between algorithmic runtime and solution accuracy.
2. Recognize how different problem domains may prioritize efficiency vs. correctness.
3. Begin thinking critically about approximate vs. exact solutions in computationally hard problems.


## 🧰 Materials / Props
None needed — this activity is purely discussion-based.

## 🕹️ Activity Walkthrough

**Time**: 5 minutes

**Setup**: 

- Pose the following scenario to the class. Ask students to discuss in pairs or small groups, then share their reasoning with the class.

    > Suppose you want to solve a really hard classification problem and there are four algorithms available to you: 
    > 
    > A. Runs in $O(n!)$, but the accuracy is guaranteed to be 100%.  
    > B. Runs in $O(2^n)$, but the accuracy is at least 90%.  
    > C. Runs in $O(n)$, but the accuracy is at least 60%.  
    > D. Runs in $O(1)$, but there is no guarantee on the accuracy.  
    >
    > Now consider two application settings:
    > - A real-time spam message detector
    > - An AI system for identifying foes in military applications
    >
    > Which algorithm would you choose for each setting, and why?

**💡Facilitating Tips**:
- Emphasize that there's no “right” answer — this is about trade-offs.
- Encourage students to think about edge cases and potential risks.
- Draw connections to the idea that many real-world problems are intractable to solve exactly, but approximate or heuristic algorithms may still be useful.


## 📝 Eric's Notes
- First ran in Winter 2024, inspired by EECS 492's ethics discussions — though I kept the framing grounded in algorithmic reasoning rather than diving deep into ethics.
- Skipped in Winter 2025 due to time constraints, but I think it’s worth bringing back as a light, reflective activity.
- Helps build an intuitive bridge from NP-hardness to approximation algorithms and real-world prioritization.

