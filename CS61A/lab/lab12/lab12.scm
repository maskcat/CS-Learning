(define-macro (def func args body)
    (list 'define (append (list func) args) body))

(define (map-stream f s)
    (if (null? s)
    	nil
    	(cons-stream (f (car s)) (map-stream f (cdr-stream s)))))

(define all-three-multiples 
  (map-stream (lambda (x) (+ x 3)) 
  (cons-stream 0 all-three-multiples))
)


(define (compose-all funcs)
  (define (compose n) 
    (if (eq? nil funcs)
      n
      ((compose-all (cdr funcs)) ((car funcs) n))))
  compose
)


(define (partial-sums stream)
  'YOUR-CODE-HERE
  (helper 0 stream)
)

