(define (cddr s)
  (cdr (cdr s)))

(define (cadr s)
  (car (cdr s))
)

(define (caddr s)
  (car (cdr (cdr s)))
)


(define (sign num)
  (cond ((< num 0) -1)
    ((= num 0) 0)
    (else 1))
)


(define (square x) (* x x))

(define (pow x y)
  (
    cond 
      ((= x 1) 1)
      ((= x 0) 0)
      ((= y 1) x)
      ((if (even? y)
        (square (pow x (/ y 2)))
        (* x (square (pow x (quotient y 2)))))))
)


(define (unique s)
  (if (null? s)
    nil
    (cons (car s) (unique (filter (lambda (x) (not (eq? x (car s)))) (cdr s)))))
)


(define (replicate x n)
  (define (rep-help x n lst)
    (if (= n 0)
      lst
      (rep-help x (- n 1) (append lst (list x)))))
  (rep-help x n (list))
)


(define (accumulate combiner start n term)
  (if (= n 0)
    start
    (combiner (term n) (accumulate combiner start (- n 1) term)))
)


(define (accumulate-tail combiner start n term)
    (define (accumulate-help combiner start n term result)
        (if (= n 0)
            result
            (accumulate-help combiner start (- n 1) term (combiner result (term n))))
    )
    (accumulate-help combiner start n term start)
)


(define-macro (list-of map-expr for var in lst if filter-expr)
  'YOUR-CODE-HERE
)

