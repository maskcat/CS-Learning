(define (over-or-under num1 num2)
  (cond 
    ((> num1 num2) 1)
    ((= num1 num2) 0)
    (else -1))
)

;;; Tests
(over-or-under 1 2)
; expect -1
(over-or-under 2 1)
; expect 1
(over-or-under 1 1)
; expect 0


(define (filter-lst fn lst)
  (define (filter-lst-iter olst nlst)
    (if (null? olst)
        nlst
        (if (fn (car olst))
            (filter-lst-iter (cdr olst) (append nlst (list(car olst))))
            (filter-lst-iter (cdr olst) nlst)
        )
    )
  )
  (filter-lst-iter lst (list))
)
;;; Tests
(define (even? x)
  (= (modulo x 2) 0))
(filter-lst even? '(0 1 1 2 3 5 8))
; expect (0 2 8)


(define (make-adder num)
; define
  ; (define (adder inc)
  ;   (+ inc num))
  ; adder
; lambda
  (lambda (inc) (+ inc num))
)

;;; Tests
(define adder (make-adder 5))
(adder 8)
; expect 13


(define lst
;list
  ; (list (list 1) 2 (list 3 4) 5)
;cons
  (cons (cons 1 nil) (cons 2 (cons (cons 3 (cons 4 nil)) (cons 5 nil))))
)


(define (composed f g)
  (lambda (a) (f ((lambda (x) (g x)) a)))
)


(define (remove item lst)
  (define (is-not-item x)
    (if (= x item)
      #f
      #t))
  (if (null? lst)
    (list)
    (filter-lst is-not-item lst))
)


;;; Tests
(remove 3 nil)
; expect ()
(remove 3 '(1 3 5))
; expect (1 5)
(remove 5 '(5 3 5 5 1 4 5 4))
; expect (3 1 4 4)


(define (no-repeats s)
  (if (null? s)
    nil
    (cons (car s) (no-repeats (remove (car s) (cdr s)))))
)


(define (substitute s old new)
  'YOUR-CODE-HERE
)


(define (sub-all s olds news)
  'YOUR-CODE-HERE
)

