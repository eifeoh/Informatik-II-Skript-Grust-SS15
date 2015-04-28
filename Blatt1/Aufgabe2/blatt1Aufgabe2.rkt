;; Die ersten drei Zeilen dieser Datei wurden von DrRacket eingefügt. Sie enthalten Metadaten
;; über die Sprachebene dieser Datei in einer Form, die DrRacket verarbeiten kann.
#reader(lib "DMdA-beginner-reader.ss" "deinprogramm")((modname blatt1Aufgabe2) (read-case-sensitive #f) (teachpacks ()) (deinprogramm-settings #(#f write repeating-decimal #f #t none explicit #f ())))
; Steffen Lindner, Tobias Feuerecker
; Blatt 1
; Aufgabe 2

; Prüft ob die beiden Fließkommazahlen a und b sich maximal 
; um den Wert eps unterscheiden
(: equal-eps (real real real -> boolean))
(check-expect (equal-eps 5.432 5.132 1.3) #t)
(check-expect (equal-eps -5.432 -5.132 0.3) #t)
(check-expect (equal-eps 2.422 2.420 0.001) #f)
(define equal-eps
  (lambda (a b eps)
    (>= (+ eps 0.0000001)
        (abs (- a b))))) 

(equal-eps 5.432 5.132 0.3)


    