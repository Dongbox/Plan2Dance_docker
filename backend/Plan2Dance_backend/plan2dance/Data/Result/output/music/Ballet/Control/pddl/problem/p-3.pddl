(define (problem p-robot-3) 
(:domain d-robot-3)
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

   (= (coherent-satisfy s1 s2) 0)
(= (coherent-satisfy s2 s3) 0)
(= (coherent-satisfy s5 s4) 0)
(= (coherent-satisfy s6 s4) 0)
(= (coherent-satisfy s7 s4) 0)
(= (coherent-satisfy s6 s5) 0)
(= (coherent-satisfy s4 s5) 0)
(= (coherent-satisfy s9 s5) 0)
(= (coherent-satisfy s4 s6) 0)
(= (coherent-satisfy s5 s6) 0)
(= (coherent-satisfy s14 s6) 0)
(= (coherent-satisfy s5 s7) 0)
(= (coherent-satisfy s4 s7) 0)
(= (coherent-satisfy s5 s7) 0)
(= (coherent-satisfy s9 s7) 0)

)
(:goal (and
    (> (dance-time) 4.0)
    (< (dance-time) 6.0)
    (forall (?s - state) (preference p-times (< (execute-times ?s) 3)))
    (forall (?s - state) (preference p-frequency (action-frequency ?s dance-frequency)))
    (preference p3 (and
        (> (coherent-satisfy s1 s2) 1)
(> (coherent-satisfy s2 s3) 1)
(> (coherent-satisfy s5 s4) 1)
(> (coherent-satisfy s6 s4) 1)
(> (coherent-satisfy s7 s4) 1)
(> (coherent-satisfy s6 s5) 1)
(> (coherent-satisfy s4 s5) 1)
(> (coherent-satisfy s9 s5) 1)
(> (coherent-satisfy s4 s6) 1)
(> (coherent-satisfy s5 s6) 1)
(> (coherent-satisfy s14 s6) 1)
(> (coherent-satisfy s5 s7) 1)
(> (coherent-satisfy s4 s7) 1)
(> (coherent-satisfy s5 s7) 1)
(> (coherent-satisfy s9 s7) 1)

	))
)
)
(:metric minimize (+
    (* 3 (is-violated p-times))
	(* 5 (is-violated p-frequency))
	(* 2 (is-violated p3))

)
)
)