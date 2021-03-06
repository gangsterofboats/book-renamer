(require "asdf")
(setf book-directory (truename "."))
(setf bd-files (uiop:directory-files "**/*"))
(dolist (f bd-files)
  (setf parent (first (last (pathname-directory f))))
  (setf new-name (pathname (concatenate 'string (namestring book-directory) parent " - " (file-namestring f))))
  (rename-file f new-name))
