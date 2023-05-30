(* Can use lemma, theorem, corollary *)
Lemma frobenius (A:Set) (p: A -> Prop) (q:Prop): 
    (exists x:A, q /\ p x) <-> (q /\ exists x:A, p x).
Proof.
    split. (* when a goal is going to fall apart into several goals use 'split' (is used for if and only if statement)*)
    intros. (* 'intros' is going to take the hypotheses and put them into the context *)
    destruct H.
    destruct H. (* destruct H as [x [H1 H2]]. *) (*or intros [x [H1 H2]].*)
    split.
    assumption. (* assume first hypotheses*)
    exists x.
    assumption.
    (* firstorder. *)
    intros [H [y H2]].
    exists y.
    (*split; assumption.*) (*or auto.*)
    split.
    assumption.
    assumption.
Qed.


(* Theorem frobenius (A:Set) (p: A -> Prop) (q:Prop): 
    (exists x:A, q /\ p x) <-> (q /\ exists x:A, p x).
Proof.
    firstorder.
Qed. *)

Check frobenius.
Print frobenius.


