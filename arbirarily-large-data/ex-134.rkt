;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-134) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
; List-of-names -> Boolean
; determines whether a string is on alon
; alon is a list of names
(define (contains? name alon)
  (cond
    [(empty? alon) #false]
    [(cons? alon)
     (or (string=? (first alon) name) ; short circuits on string=?
         (contains? name (rest alon)))]))

(check-expect (contains? "Flatt" (cons "X" (cons "Y" (cons "Z"'()))))
              #false)
(check-expect (contains? "Flatt" (cons "A" (cons "Flatt" (cons "C" '()))))
              #true)