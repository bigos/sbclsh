;;;; sbclsh.lisp

(in-package #:sbclsh)

;;; "sbclsh" goes here. Hacks and glory await!

(defun main (arg)
  (let ((argv sb-ext:*posix-argv* ))
    (format nil "Hello ~A ~A~%" argv arg)))


;;; types in sbcl
(defparameter x 14)
(proclaim '(type (integer 0 15) x) )

;;; this should not compile
;;; (setq x 16)

;;; more info about types
;;; http://www.sbcl.org/manual/#Getting-Existing-Programs-to-Run

(defun print-number (x)
  (declare (type (integer 0 15) x))
  (format t "~a~%" x))

(defun print-string (str)
  (declare (type string str))
  (format t "~A~%" str))

(defun print-number-and-strings (num str1 str2)
  (declare (type fixnum num)
           (type string str1 str2))
  (format t "~A~A~A" num str1 str2))

;;; this won't compile because of type mismatch
;;; (print-string 1)
