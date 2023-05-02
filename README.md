# **Project: Use EasyCrypt to implement <ins>SPHINCS</ins> quantum security**
## Week tasks and plans 
---
## **Week plan 5.1-5.7 (2023)**
##### *1. Review the SPHINCS construction.*
Four steps for modeling: 
1. List the parameters (these are overall parameters):
* (nature number, security parameter) n.
* (Short-input hash functions) F:{0,1}^n -> {0,1}^n & H:{0,1}^2n -> {0,1}^n.
* (Arbitrary-input hash function) H':{0,1}^n * {0,1}^* -> {0,1}^m, where m=poly(n).
* (A family of pseudorandom generator) G_lemda: {0,1}^n -> {0,1}^(lemda*n).
* (Pseudorandom function family) F_lemda: {0,1}^lemda * {0,1}^n -> {0,1}^n & F': {0,1}^* * {0,1}^n -> {0,1}^2n
* (A hyper-tree) (height) h=cd, (layer number) d, (each height) c=h/d
* (Winternitz parameters used in WOTS) (nature number) w, w>1
* (Winternitz parameters used in HORST) (nature number) k & t_tau, t=2^t_tau, k*t_tau=m
In SPHINCS-256: n=256, m=512, h=60, d=12, w=16, t=2^16, k=32
Therefore, t_tau=16, c=5, 2n=512, t=65536.
2. One-time signature scheme WOTS+. 
3. Few-time signature scheme HORST.
4. Many-time signature scheme SPHINCS.
##### *2. Identify problem when modeling.*
The easycrypt summer school part1: https://www.youtube.com/watch?v=vEE84uuOX_Q
* Some relationship between Jasmin language and easycrypt?
* This video mentions Pseudorandom functions (This helps model functions for SPHINCS).
The coq tutorial for this week: https://www.youtube.com/watch?v=z861PoZPGqk&list=PLDD40A96C2ED54E99&index=4
This week models constant parameters. No problem this week.
##### *3. Something need to update during the meeting.*
Show the parameter modeling (check the correctness).
Optional-Show coq learning.
##### *4. Something need help to solve.*
The next week should focus on the modeling or read the security proof?
##### *5. Something push to next week.*
* Emacs-This must be solved, but dont know how long will it take, push it to next week.
##### *6. Plan for next week.*
Continously model hash functions.
Start to model the WOTS+.
Half-hour to solve Emacs, if not push to the week after.
