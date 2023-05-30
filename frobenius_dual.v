(* can not use 'firstorder' since the proof requires classical reasoning but coq is intuitionist*)
(*need to define the law of middle*)
Definition lem := forall p, p \/ ~p. (* p is part of disjunction so it has to be a proposition*)
Print lem.

Definition frobenius := forall (A:Set) (p: A -> Prop) (q:Prop), 
    (forall x:A, q \/ p x) <-> (q \/ forall x:A, p x).  (*/\-conjunction \/-disjunction*)
Theorem lem_to_frobenius: lem -> frobenius. 
Proof. 
    unfold lem, frobenius.
    firstorder.
    assert (G := H q). (*or just use 'destruct (H q).'*)
    destruct G.
    left.
    assumption.
    right.
    intro.
    destruct (H0 x).
    elim H1.
    assumption.
    assumption. 
Qed.

(*the easy way*)
Definition frobenius := forall (A:Set) (p: A -> Prop) (q:Prop), 
    (forall x:A, q \/ p x) <-> (q \/ forall x:A, p x).  (*/\-conjunction \/-disjunction*)
Theorem lem_to_frobenius: lem -> frobenius.
Proof.
    unfold lem, frobenius.
    firstorder.
    destruct (H q); firstorder (*; means do destruct and then for every sub goal do firstorder*)
Qed.