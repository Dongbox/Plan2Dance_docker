(define (problem p-robot-5) 
(:domain d-robot-5)
(:objects
    
    slow - rate
    mid - rate
    fast - rate
)
(:init
    (is_body_free hand-left)
    (is_body_free hand-right)
    (is_body_free leg-left)
    (is_body_free leg-right)

    (at-body-space-y centre)
    (at-body-space-z stand)
    (at-body-space-hand others)

    (= (dance-time) 0)
    (= (action-rate slow) 1.15)
    (= (action-rate mid) 1)
    (= (action-rate fast) 0.85)
   
	(= (high-frequency-times) 0)
	(= (inter-frequency-times) 0)
	
   
   (waiting s1)
(waiting s2)
(waiting s3)
(waiting s4)
(waiting s5)
(waiting s6)
(waiting s7)
(waiting s8)
(waiting s9)
(waiting s10)
(waiting s11)
(waiting s12)
(waiting s13)
(waiting s14)
(waiting s15)
(waiting s16)
(waiting s17)
(waiting s18)
(waiting s19)
(waiting s20)
(waiting s21)
(waiting s22)
(waiting s23)
(waiting s24)
(waiting s25)
(waiting s26)
(waiting s27)
(waiting s28)
(waiting s29)
(waiting s30)
(waiting s31)
(waiting s32)
(waiting s33)
(waiting s34)
(waiting s35)
(waiting s36)
(waiting s37)
(waiting s38)
(waiting s39)
(waiting s40)
(waiting s41)
(waiting s42)
(waiting s43)
(waiting s44)
(waiting s45)
(waiting s46)
(waiting s47)
(waiting s48)
(waiting s49)
(waiting s50)
(waiting s51)
(waiting s52)
(waiting s53)
(waiting s54)
(waiting s55)
(waiting s56)
(waiting s57)
(waiting s58)
(waiting s59)
(waiting s60)
(waiting s61)
(waiting s62)
(waiting s63)
(waiting s64)
(waiting s65)
(waiting s66)
(waiting s67)
(waiting s68)
(waiting s69)
(waiting s70)
(waiting s71)
(waiting s72)
(waiting s73)
(waiting s74)
(waiting s75)
(waiting s76)
(waiting s77)
(waiting s78)
(waiting s79)
(waiting s80)
(waiting s81)
(waiting s82)
(waiting s83)
(waiting s84)
(waiting s85)

   (= (execute-times s1) 0)
(= (execute-times s2) 0)
(= (execute-times s3) 0)
(= (execute-times s4) 0)
(= (execute-times s5) 0)
(= (execute-times s6) 0)
(= (execute-times s7) 0)
(= (execute-times s8) 0)
(= (execute-times s9) 0)
(= (execute-times s10) 0)
(= (execute-times s11) 0)
(= (execute-times s12) 0)
(= (execute-times s13) 0)
(= (execute-times s14) 0)
(= (execute-times s15) 0)
(= (execute-times s16) 0)
(= (execute-times s17) 0)
(= (execute-times s18) 0)
(= (execute-times s19) 0)
(= (execute-times s20) 0)
(= (execute-times s21) 0)
(= (execute-times s22) 0)
(= (execute-times s23) 0)
(= (execute-times s24) 0)
(= (execute-times s25) 0)
(= (execute-times s26) 0)
(= (execute-times s27) 0)
(= (execute-times s28) 0)
(= (execute-times s29) 0)
(= (execute-times s30) 0)
(= (execute-times s31) 0)
(= (execute-times s32) 0)
(= (execute-times s33) 0)
(= (execute-times s34) 0)
(= (execute-times s35) 0)
(= (execute-times s36) 0)
(= (execute-times s37) 0)
(= (execute-times s38) 0)
(= (execute-times s39) 0)
(= (execute-times s40) 0)
(= (execute-times s41) 0)
(= (execute-times s42) 0)
(= (execute-times s43) 0)
(= (execute-times s44) 0)
(= (execute-times s45) 0)
(= (execute-times s46) 0)
(= (execute-times s47) 0)
(= (execute-times s48) 0)
(= (execute-times s49) 0)
(= (execute-times s50) 0)
(= (execute-times s51) 0)
(= (execute-times s52) 0)
(= (execute-times s53) 0)
(= (execute-times s54) 0)
(= (execute-times s55) 0)
(= (execute-times s56) 0)
(= (execute-times s57) 0)
(= (execute-times s58) 0)
(= (execute-times s59) 0)
(= (execute-times s60) 0)
(= (execute-times s61) 0)
(= (execute-times s62) 0)
(= (execute-times s63) 0)
(= (execute-times s64) 0)
(= (execute-times s65) 0)
(= (execute-times s66) 0)
(= (execute-times s67) 0)
(= (execute-times s68) 0)
(= (execute-times s69) 0)
(= (execute-times s70) 0)
(= (execute-times s71) 0)
(= (execute-times s72) 0)
(= (execute-times s73) 0)
(= (execute-times s74) 0)
(= (execute-times s75) 0)
(= (execute-times s76) 0)
(= (execute-times s77) 0)
(= (execute-times s78) 0)
(= (execute-times s79) 0)
(= (execute-times s80) 0)
(= (execute-times s81) 0)
(= (execute-times s82) 0)
(= (execute-times s83) 0)
(= (execute-times s84) 0)
(= (execute-times s85) 0)

   
)
(:goal (and
    (> (dance-time) 3.682)
    (< (dance-time) 3.882)
    (forall (?s - state) (preference p-times (< (execute-times ?s) 3)))
    (forall (?s - state) (preference p0 (best-rate ?s fast)))
    (forall (?s - state) (preference p-frequency (action-frequency ?s high-frequency)))
)
)
(:metric minimize (+
    (* 3 (is-violated p-times))
	(* 5 (is-violated p-frequency))
	(* 2 (is-violated p0))

)
)
)