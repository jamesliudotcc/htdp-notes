;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-140) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
; A List-of-bools is one of:
; -- '()
; -- '(cons bool List-of-bools)

; E.g. (cons #t '())
; E.g. (cons #f (cons #f '()))

(check-expect (all-true? (cons #true '())) #true)
(check-expect (all-true? '()) #true)
(check-expect (all-true? (cons #f (cons #f '()))) #f)
(check-expect (all-true? (cons #t (cons #f '()))) #f)

(define (all-true? lob)
  (cond
    [(empty? lob) #t]
    [else
     (if [false? (first lob)] #f (all-true? (rest lob)))]))

(check-expect (one-true? (cons #true '())) #true)
(check-expect (one-true? '()) #f)
(check-expect (one-true? (cons #f (cons #f '()))) #f)
(check-expect (one-true? (cons #t (cons #f '()))) #t)


(define (one-true? lob)
  (cond
    [(empty? lob) #f]
    [else
     (if (first lob) #t (one-true? (rest lob)))]))