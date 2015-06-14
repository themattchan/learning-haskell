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
(declare-fun z3v62 () Int)
(declare-fun z3v63 () Int)
(assert (distinct z3v62 z3v63))
(declare-fun z3v64 () Int)
(declare-fun z3f65 (Int) Int)
(declare-fun z3v66 () Int)
(declare-fun z3f67 (Int) Bool)
(declare-fun z3v68 () Int)
(declare-fun z3v69 () Int)
(declare-fun z3v70 () Int)
(declare-fun z3v71 () Int)
(declare-fun z3f72 (Int) Int)
(declare-fun z3f73 (Int) Int)
(declare-fun z3f74 (Int) Bool)
(declare-fun z3f75 (Int Int) Int)
(declare-fun z3v76 () Int)
(declare-fun z3v77 () Int)
(declare-fun z3v78 () Int)
(declare-fun z3v79 () Int)
(declare-fun z3f80 (Int) Int)
(declare-fun z3v81 () Int)
(declare-fun z3v82 () Int)
(declare-fun z3v83 () Int)
(push 1)
(assert true)
(assert (= z3v83 z3v77))
(assert (and (>= (z3f65 z3v64) 0) (not (z3f67 z3v66)) (not (z3f67 z3v66)) (= z3v66 z3v68) (= (z3f67 z3v66) (>  z3v70 z3v69)) (= (z3f67 z3v68) (>  z3v70 z3v69)) (= z3v69 3) (>= (z3f65 z3v71) 0) (= (z3f72 z3v71) z3v70) (= (z3f73 z3v71) z3v64) (= (z3f65 z3v71) (+ 1 (z3f65 z3v64))) (= (z3f74 z3v71) false) (= z3v71 (z3f75 z3v70 z3v64)) (>= (z3f65 z3v71) 0) (= z3v71 z3v76) (>= (z3f65 z3v71) 0) (>= (z3f65 z3v76) 0) (= z3v78 z3v77) (z3f67 z3v62) (= (z3f80 z3v79) z3v79) (= (z3f80 z3v81) z3v81) (not (z3f67 z3v63)) (= (z3f80 z3v82) z3v82)))
(push 1)
(assert (not (>  z3v83 z3v77)))
(check-sat)
(pop 1)
(push 1)
(assert (not (>= z3v83 z3v77)))
(check-sat)
(pop 1)
(push 1)
(assert (not (not (= z3v83 z3v77))))
(check-sat)
(pop 1)
(push 1)
(assert (not (<= z3v83 z3v77)))
(check-sat)
(pop 1)
(push 1)
(assert (not (<  z3v83 z3v77)))
(check-sat)
(pop 1)
(pop 1)
(declare-fun z3v84 () Int)
(declare-fun z3v85 () Int)
(declare-fun z3v86 () Int)
(declare-fun z3v87 () Int)
(declare-fun z3v88 () Int)
(declare-fun z3v89 () Int)
(push 1)
(assert true)
(assert (= z3v89 z3v84))
(assert (>= (z3f65 z3v89) 0))
(assert (and (>= (z3f65 z3v84) 0) (>= (z3f65 z3v85) 0) (= (z3f72 z3v85) z3v86) (= (z3f73 z3v85) z3v84) (= (z3f65 z3v85) (+ 1 (z3f65 z3v84))) (= (z3f74 z3v85) false) (= z3v85 (z3f75 z3v86 z3v84)) (>= (z3f65 z3v85) 0) (= z3v85 z3v87) (>= (z3f65 z3v85) 0) (>= (z3f65 z3v87) 0) (>= (z3f65 z3v88) 0) (= z3v88 z3v84) (>= (z3f65 z3v88) 0) (z3f67 z3v62) (= (z3f80 z3v79) z3v79) (= (z3f80 z3v81) z3v81) (not (z3f67 z3v63)) (= (z3f80 z3v82) z3v82)))
(push 1)
(assert (not (and (>= (z3f65 z3v89) 0) (<  (z3f65 z3v89) (z3f65 z3v87)))))
(check-sat)
(pop 1)
(pop 1)
(declare-fun z3v90 () Int)
(declare-fun z3v91 () Int)
(declare-fun z3v92 () Int)
(declare-fun z3v93 () Int)
(declare-fun z3v94 () Int)
(declare-fun z3v95 () Int)
(declare-fun z3v96 () Int)
(push 1)
(assert true)
(assert (= z3v96 z3v90))
(assert (>= (z3f65 z3v96) 0))
(assert (and (>= (z3f65 z3v90) 0) (= z3v91 1) (>= (z3f65 z3v92) 0) (= (z3f72 z3v92) z3v93) (= (z3f73 z3v92) z3v90) (= (z3f65 z3v92) (+ 1 (z3f65 z3v90))) (= (z3f74 z3v92) false) (= z3v92 (z3f75 z3v93 z3v90)) (>= (z3f65 z3v92) 0) (= z3v92 z3v94) (>= (z3f65 z3v92) 0) (>= (z3f65 z3v94) 0) (>= (z3f65 z3v95) 0) (= z3v95 z3v90) (>= (z3f65 z3v95) 0) (z3f67 z3v62) (= (z3f80 z3v79) z3v79) (= (z3f80 z3v81) z3v81) (not (z3f67 z3v63)) (= (z3f80 z3v82) z3v82)))
(push 1)
(assert (not (and (>= (z3f65 z3v96) 0) (<  (z3f65 z3v96) (z3f65 z3v94)))))
(check-sat)
(pop 1)
(pop 1)
(declare-fun z3v97 () Int)
(declare-fun z3v98 () Int)
(declare-fun z3v99 () Int)
(declare-fun z3v100 () Int)
(declare-fun z3v101 () Int)
(declare-fun z3v102 () Int)
(push 1)
(assert true)
(assert (= z3v102 z3v97))
(assert (>= (z3f65 z3v102) 0))
(assert (and (>= (z3f65 z3v97) 0) (>= (z3f65 z3v98) 0) (= (z3f72 z3v98) z3v99) (= (z3f73 z3v98) z3v97) (= (z3f65 z3v98) (+ 1 (z3f65 z3v97))) (= (z3f74 z3v98) false) (= z3v98 (z3f75 z3v99 z3v97)) (>= (z3f65 z3v98) 0) (= z3v98 z3v100) (>= (z3f65 z3v98) 0) (>= (z3f65 z3v100) 0) (>= (z3f65 z3v101) 0) (= z3v101 z3v97) (>= (z3f65 z3v101) 0) (z3f67 z3v62) (= (z3f80 z3v79) z3v79) (= (z3f80 z3v81) z3v81) (not (z3f67 z3v63)) (= (z3f80 z3v82) z3v82)))
(push 1)
(assert (not (and (>= (z3f65 z3v102) 0) (<  (z3f65 z3v102) (z3f65 z3v100)))))
(check-sat)
(pop 1)
(pop 1)
(declare-fun z3v103 () Int)
(declare-fun z3v104 () Int)
(declare-fun z3v105 () Int)
(push 1)
(assert true)
(assert (= z3v105 z3v64))
(assert (>= (z3f65 z3v105) 0))
(assert (and (>= (z3f65 z3v64) 0) (not (z3f67 z3v66)) (not (z3f67 z3v66)) (= z3v66 z3v68) (= (z3f67 z3v66) (>  z3v70 z3v69)) (= (z3f67 z3v68) (>  z3v70 z3v69)) (= z3v69 3) (>= (z3f65 z3v71) 0) (= (z3f72 z3v71) z3v70) (= (z3f73 z3v71) z3v64) (= (z3f65 z3v71) (+ 1 (z3f65 z3v64))) (= (z3f74 z3v71) false) (= z3v71 (z3f75 z3v70 z3v64)) (>= (z3f65 z3v71) 0) (= z3v71 z3v76) (>= (z3f65 z3v71) 0) (>= (z3f65 z3v76) 0) (>= (z3f65 z3v104) 0) (= z3v104 z3v64) (>= (z3f65 z3v104) 0) (z3f67 z3v62) (= (z3f80 z3v79) z3v79) (= (z3f80 z3v81) z3v81) (not (z3f67 z3v63)) (= (z3f80 z3v82) z3v82)))
(assert (= z3v103 z3v77))
(push 1)
(assert (not (and (>= (z3f65 z3v105) 0) (<  (z3f65 z3v105) (z3f65 z3v76)))))
(check-sat)
(pop 1)
(pop 1)
(declare-fun z3v106 () Int)
(push 1)
(assert true)
(assert (= z3v106 z3v77))
(assert (and (>= (z3f65 z3v64) 0) (not (z3f67 z3v66)) (not (z3f67 z3v66)) (= z3v66 z3v68) (= (z3f67 z3v66) (>  z3v70 z3v69)) (= (z3f67 z3v68) (>  z3v70 z3v69)) (= z3v69 3) (>= (z3f65 z3v71) 0) (= (z3f72 z3v71) z3v70) (= (z3f73 z3v71) z3v64) (= (z3f65 z3v71) (+ 1 (z3f65 z3v64))) (= (z3f74 z3v71) false) (= z3v71 (z3f75 z3v70 z3v64)) (>= (z3f65 z3v71) 0) (= z3v71 z3v76) (>= (z3f65 z3v71) 0) (>= (z3f65 z3v76) 0) (= z3v78 z3v77) (z3f67 z3v62) (= (z3f80 z3v79) z3v79) (= (z3f80 z3v81) z3v81) (not (z3f67 z3v63)) (= (z3f80 z3v82) z3v82)))
(push 1)
(assert (not (= z3v106 z3v77)))
(check-sat)
(pop 1)
(pop 1)
(declare-fun z3v107 () Int)
(declare-fun z3v108 () Int)
(declare-fun z3v109 () Int)
(declare-fun z3v110 () Int)
(declare-fun z3v111 () Int)
(declare-fun z3v112 () Int)
(push 1)
(assert true)
(assert (= z3v112 z3v64))
(assert (>= (z3f65 z3v112) 0))
(assert (and (>= (z3f65 z3v64) 0) (= z3v109 (+ z3v108 z3v107)) (= z3v107 2) (=> (and (>  z3v110 0) (>  z3v70 0)) (and (>= z3v108 z3v110) (>= z3v108 z3v70))) (=> (or (= z3v110 0) (= z3v70 0)) (= z3v108 0)) (=> (and (>  z3v110 1) (>  z3v70 1)) (and (>  z3v108 z3v110) (>  z3v108 z3v70))) (= z3v110 7) (z3f67 z3v66) (z3f67 z3v66) (= z3v66 z3v68) (= (z3f67 z3v66) (>  z3v70 z3v69)) (= (z3f67 z3v68) (>  z3v70 z3v69)) (= z3v69 3) (>= (z3f65 z3v71) 0) (= (z3f72 z3v71) z3v70) (= (z3f73 z3v71) z3v64) (= (z3f65 z3v71) (+ 1 (z3f65 z3v64))) (= (z3f74 z3v71) false) (= z3v71 (z3f75 z3v70 z3v64)) (>= (z3f65 z3v71) 0) (= z3v71 z3v76) (>= (z3f65 z3v71) 0) (>= (z3f65 z3v76) 0) (>= (z3f65 z3v111) 0) (= z3v111 z3v64) (>= (z3f65 z3v111) 0) (z3f67 z3v62) (= (z3f80 z3v79) z3v79) (= (z3f80 z3v81) z3v81) (not (z3f67 z3v63)) (= (z3f80 z3v82) z3v82)))
(push 1)
(assert (not (and (>= (z3f65 z3v112) 0) (<  (z3f65 z3v112) (z3f65 z3v76)))))
(check-sat)
(pop 1)
(pop 1)
(declare-fun z3v113 () Int)
(declare-fun z3v114 () Int)
(declare-fun z3v115 () Int)
(declare-fun z3v116 () Int)
(declare-fun z3v117 () Int)
(declare-fun z3v118 () Int)
(push 1)
(assert true)
(assert (= z3v118 z3v113))
(assert (>= (z3f65 z3v118) 0))
(assert (and (>= (z3f65 z3v113) 0) (>= (z3f65 z3v114) 0) (= (z3f72 z3v114) z3v115) (= (z3f73 z3v114) z3v113) (= (z3f65 z3v114) (+ 1 (z3f65 z3v113))) (= (z3f74 z3v114) false) (= z3v114 (z3f75 z3v115 z3v113)) (>= (z3f65 z3v114) 0) (= z3v114 z3v116) (>= (z3f65 z3v114) 0) (>= (z3f65 z3v116) 0) (>= (z3f65 z3v117) 0) (= z3v117 z3v113) (>= (z3f65 z3v117) 0) (z3f67 z3v62) (= (z3f80 z3v79) z3v79) (= (z3f80 z3v81) z3v81) (not (z3f67 z3v63)) (= (z3f80 z3v82) z3v82)))
(push 1)
(assert (not (and (>= (z3f65 z3v118) 0) (<  (z3f65 z3v118) (z3f65 z3v116)))))
(check-sat)
(pop 1)
(pop 1)
