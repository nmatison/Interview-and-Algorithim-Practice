# Dynamic Programming

## Tabulation vs Memoizatation
Tabulation:
+ Bottom Up (bottom case to the top case)
+ dp[0] --> dp[n]
+ State transition relation is difficult to think
+ Code gets complicated when a lot of conditions are required
+ Is fast as we directly access previous states from the table.

Memoization:
+ Top Down (top case to the bottom case)
+ dp[n] --> dp[0]
+ State transition relation is easy to think
+ Code is easy and less complicated
+ Is slow due to a lot of recursive calls and return statements

![Comparison Chart](https://github.com/nmatison/Interview-and-Algorithim-Practice/blob/master/Study_Notes/images/Tabulation-vs-Memoization-1.png)

## Optimal Subproblems:
+ Dynamic Programming is mainly used when solutions of same subproblems are needed again and again.
+ solutions to subproblems are stored in a table for future use

## Optimal Substructure:
+ A problem has the Optimal Substructure Property if the optimal solution of the given problem can be obtained by using optimal solutions of its subproblems.