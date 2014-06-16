;;;; sbclsh.lisp

(in-package #:sbclsh)

;;; "sbclsh" goes here. Hacks and glory await!

(defun main (arg)
  (let ((argv sb-ext:*posix-argv* ))
    (format T "Hello ~A ~A~%" argv arg)))
