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
##### *Summary.*
constant library, constant declaration (nature number declaration).

## **Week plan 5.8-5.14 (2023)**
##### *1. Hash functions and Pseudorandom function modeling.* 
* (Short-input hash functions) F:{0,1}^n -> {0,1}^n & H:{0,1}^2n -> {0,1}^n.
* (Arbitrary-input hash function) H':{0,1}^n * {0,1}^* -> {0,1}^m, where m=poly(n).
* (A family of pseudorandom generator) G_lemda: {0,1}^n -> {0,1}^(lemda*n).
* (Pseudorandom function family) F_lemda: {0,1}^lemda * {0,1}^n -> {0,1}^n & F': {0,1}^* * {0,1}^n -> {0,1}^2n
##### *2. Identify problem when modeling.*
The easycrypt summer school part1: https://www.youtube.com/watch?v=vEE84uuOX_Q
The coq tutorial for this week: https://www.youtube.com/watch?v=tZRAFKIv6Js&list=PLDD40A96C2ED54E99&index=5
###### Notes for the video
Pseudorandom function f: K x N -> M.
AllCore: integers, booleans, real numbers.
SmtMap: functional maps
###### Notes for second coq tutorial
In Coq, a proposition is a statement or a claim that can either be true or false. 
It represents a logical assertion or a piece of knowledge that we want to prove or reason about.
##### *3. Something need to update during the meeting.*
Show the hash functions modeling.
Optional-Show second coq tutorial.
##### *4. Something need help to solve.*
The next week should focus on the modeling WOTS+ or read the security proof?
##### *5. Plan for next week.*
Start to model the Pseudorandom function.
Did not spend time to solve Emacs, push to next week.
##### *Summary.*
Hash functions modelling. First easycrypt video done. Second coq tutorial.

## **Week plan 5.22-5.28 (2023)**
##### *1. Hash functions and Pseudorandom function modeling.* 
* (Short-input hash functions) F:{0,1}^n -> {0,1}^n & H:{0,1}^2n -> {0,1}^n.
* (Arbitrary-input hash function) H':{0,1}^n * {0,1}^* -> {0,1}^m, where m=poly(n).
* (A family of pseudorandom generator) G_lemda: {0,1}^n -> {0,1}^(lemda*n).
* (Pseudorandom function family) F_lemda: {0,1}^lemda * {0,1}^n -> {0,1}^n & F': {0,1}^* * {0,1}^n -> {0,1}^2n
##### *2. Identify problem when modeling.*
Need the lemma to restrict the input and output size for the hash functions. For the hash function operation, there is no operation (how to compute the hash?) currently for the hash functions.
##### *3. Something need to update during the meeting.*
Show the hash functions modeling. The key problem: how to lemma the input and output size
and what is the connection between hash functions and distribution.
##### *4. Something need help to solve.*
The next week should focus on the modeling WOTS+.
##### *5. Plan for next week.*
Start to model WOTS+.
Did not spend time to solve Emacs, push to next week.
##### *Summary.*
###### *MUniFinFun theory*
The given code defines a theory called "MUniFinFun" that deals with abstract functions on a type 't'. Here's an explanation of the code:

clone FinType as FinT with type t <- t: This line clones the FinType structure as FinT for the type 't'. It establishes a bijection between the type 't' and the finite set FinT.enum.

op mfun ['u] (d : t -> 'u distr) (f : t -> 'u): This defines an operator mfun that takes a distribution d and a function f and returns a distribution over the type 't'. It uses the BRM.big operator to compute the sum of the function values weighted by the probabilities from the distribution d.

lemma mfunE ['u] (d : t -> 'u distr) (f : t -> 'u): This lemma establishes an equality between mfun d f and the result of applying the mu1 operator to the joined distribution obtained by mapping d over FinT.enum and the mapped function f over FinT.enum.

lemma isdistr_dfun ['u] (d : t -> 'u distr): This lemma states that if each individual distribution d x is a valid distribution, then the distribution dfun d obtained by applying the dfun operator to d is also a valid distribution.

op dfun ['u] (d : t -> 'u distr): This operator dfun takes a function d that maps each element of 't' to a distribution over 'u' and returns a joint distribution over the type 't'. It uses the mfun operator to compute the joint distribution.

lemma dfun1E ['u] (d : t -> 'u distr) f: This lemma provides an expression for the expectation of a function f with respect to the joint distribution dfun d. It states that the expectation is equal to the sum of the function values weighted by the probabilities of each element of 't' in the distribution d.

lemma dfun1E_djoin ['u] (d : t -> 'u distr) f: This lemma provides an alternative expression for the expectation of a function f with respect to the joint distribution dfun d. It states that the expectation is equal to the expectation of the function f with respect to the joined distribution obtained by mapping d over FinT.enum and mapping f over FinT.enum.

op tofun ['u] (us : 'u list): This operator tofun takes a list us and returns a function that maps each element of 't' to the corresponding element of us based on their indices in the FinT.enum list.

op offun (f : t -> 'u): This operator offun takes a function f and returns a list of elements obtained by mapping f over the FinT.enum list.

lemma offunK ['u]: This lemma states that applying the tofun operator to the result of applying the offun operator to a function f yields the original function f.

lemma tofunK ['u] us: This lemma states that if the size of the list us is equal to the cardinality of FinT, then applying the offun operator to the result of applying