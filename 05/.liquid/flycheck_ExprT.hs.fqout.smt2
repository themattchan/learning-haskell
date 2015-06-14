(set-option :auto-config false)
(set-option :model true)
(set-option :model.partial false)
(set-option :smt.mbqi false)
(define-sort SMT_Elt () Int)
(define-sort SMT_Set () (Array SMT_Elt Bool))
(define-fun smt_set_emp () SMT_Set ((as const SMT_Set) false))
(define-fun smt_set_mem ((x SMT_Elt) (s SMT_Set)) Bool (select s x))
(define-fun smt_set_add ((s SMT_Set) (x SMT_Elt)) SMT_Set (store s x true))
(define-fun smt_set_cup ((s1 SMT_Set) (s2 SMT_Set)) SMT_Set ((_ map or) s1 s2))
(define-fun smt_set_cap ((s1 SMT_Set) (s2 SMT_Set)) SMT_Set ((_ map and) s1 s2))
(define-fun smt_set_com ((s SMT_Set)) SMT_Set ((_ map not) s))
(define-fun smt_set_dif ((s1 SMT_Set) (s2 SMT_Set)) SMT_Set (smt_set_cap s1 (smt_set_com s2)))
(define-fun smt_set_sub ((s1 SMT_Set) (s2 SMT_Set)) Bool (= smt_set_emp (smt_set_dif s1 s2)))
(declare-fun z3v61 () Int)
