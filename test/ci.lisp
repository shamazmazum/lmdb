(defun do-all()
  (handler-case
      (asdf:load-system :lmdb/test)
    (error ()
      (uiop:quit 1)))
  (uiop:quit
   (if (uiop:call-function "lmdb/test:test")
       0 1)))

(do-all)
