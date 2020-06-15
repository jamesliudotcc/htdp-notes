;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-146) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
; An NEList-of-temperatures is one of:
; -- (cons CTemperature '())
; -- (cons CTemperature NEList-of-tempeartures)

(define (sum ne-l)
  (cond
  [(empty? (rest ne-l)) (first ne-l)]
  [else
   (+ (first ne-l) (sum (rest ne-l)))]))

(check-expect
 (sorted>? (cons 1 '()))
 #t)
(check-expect
 (sorted>? (cons 4 (cons 3 '())))
 #t)
(check-expect
 (sorted>? (cons 3 (cons 4 '())))
 #f)

(define (sorted>? ne-l)
  (cond
    [(empty? (rest ne-l)) #t]
    [else
     (> (first ne-l) (first (rest ne-l)))]))
(check-expect
 (how-many (cons 2 '())) 1)
(check-expect 
 (how-many (cons 2 (cons 3 '()))) 2)
(define (how-many l)
  (cond
    [(empty? (rest l)) 1]
    [else
     (+ 1 (how-many (rest l)))]))