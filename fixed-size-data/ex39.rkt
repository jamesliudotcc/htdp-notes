;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex29) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
; Physical Constants

(define WIDTH-OF-WORLD 200)

(define WHEEL-RADIUS 5)
(define WHEEL-DISTANCE (* WHEEL-RADIUS 5))

; Graphical Constants
(define WHEEL
  (circle WHEEL-RADIUS "solid" "gray"))
(define SPACE
  (rectangle (* WHEEL-RADIUS 2) WHEEL-RADIUS "solid" "transparent"))
(define BOTH-WHEELS
  (beside WHEEL SPACE WHEEL))
(define BODY (rectangle (* WHEEL-RADIUS 5 2) (* WHEEL-RADIUS 2) "solid" "red"))
(define TOP (rectangle (* WHEEL-RADIUS 5) (* WHEEL-RADIUS 2) "solid" "red"))
(define CAR (overlay/offset
 (overlay/offset TOP 0 10 BODY)
 0
 (* 2 WHEEL-RADIUS) BOTH-WHEELS))

; WorldState: data that represents the state of the world

; WorldState -> Image
; when needed, big-bang obtains the image of the current
; state of the world by evaluating (render cw)
(define (render ws) ...)

; WorldState -> WorldState
; for each tick of the clock, big-bang obtains the next
; state of the owrld from {clock-tick-hander cw)
(define (clock-tick-handler cw) ...)

; WorldState String -> WorldState
; for each keystroke, big-bang obtains the next state
; from (keystroke-handler cw ke); ke represents the key
(define (keystroke-handler cw ke) ...)

; WorldState Number Number String -> WorldState
; for each mouse gesture, big-bang obtains the next state
; from (mouse-event cw x y me) where x and y are
; the coordinates of the event and me is its description
(define (mouse-event-hander cw x y me) ...)

; WorldState -> Boolean
; after each event, big-bang evaluates (end? cw)_
(define (end? cw) ...)