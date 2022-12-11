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
  'YOUR-CODE-HERE
)


(define (replicate x n)
  'YOUR-CODE-HERE
  )


(define (accumulate combiner start n term)
  'YOUR-CODE-HERE
)


(define (accumulate-tail combiner start n term)
  'YOUR-CODE-HERE
)


(define-macro (list-of map-expr for var in lst if filter-expr)
  'YOUR-CODE-HERE
)

