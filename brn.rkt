#lang racket
(define bd (current-directory))
(define dirs (directory-list bd))
(for ([dir (in-list dirs)])
  (define files (directory-list dir))
  (for ([file (in-list files)])
    (define fop (format "~a~a/~a" bd dir file))
    (define fnp (format "~a~a - ~a" bd dir file))
    (rename-file-or-directory fop fnp)))
