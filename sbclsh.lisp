;;;; sbclsh.lisp

(in-package #:sbclsh)

;;; "sbclsh" goes here. Hacks and glory await!

(defun main (arg)
  (let ((argv sb-ext:*posix-argv* ))
    (format nil "Hello ~A ~A~%" argv arg)))


;;; types in sbcl
(defparameter x 14)
(proclaim '(type (integer 0 15) x) )
(setq x 16)                             ; should raise an error
