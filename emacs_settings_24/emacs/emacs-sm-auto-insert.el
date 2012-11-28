;;; emacs-sm-auto-insert.el --- My Auto Insert related settings

;; Copyright (C) 2012  Saptarshi Mondal

;; Author: Saptarshi Mondal <saptarshi.mondal@gmail.com>
;; Keywords: 


(require 'autoinsert)
    (auto-insert-mode)  ;;; Adds hook to find-files-hook
    (setq auto-insert-directory "~/emacs/") ;;; Or use custom, *NOTE* Trailing slash important
    (setq auto-insert-query nil) ;;; If you don't want to be prompted before insertion
    (define-auto-insert "\.py" "my-python-template.py")
    (define-auto-insert "\.php" "my-php-template.php")


 ;; auto-insert stuff
    (add-hook 'find-file-hooks 'auto-insert)
    (setq auto-insert-directory (concat (getenv "HOME") "/emacs/"))
    (setq auto-insert-alist
	  '(
	    ("\\.cpp$" . ["insert.cpp" auto-update-c-source-file])
	    ("\\.h$"   . ["insert.h" auto-update-header-file])
	    ("\\.c$" . ["insert.c" auto-update-c-source-file])
	     ("\\.java$" . ["insert.java" auto-update-c-source-file])
	    ))
    (setq auto-insert 'other)
    ;; function replaces the string '@@@' by the current file
    ;; name. You could use a similar approach to insert name and date into
    ;; your file.
    (defun auto-update-header-file ()
	 (save-excursion
	   (while (search-forward "@@@" nil t)
	     (save-restriction
	       (narrow-to-region (match-beginning 0) (match-end 0))
	       (replace-match (upcase (file-name-nondirectory buffer-file-name)))
	       (subst-char-in-region (point-min) (point-max) ?. ?_)
	       ))
	   )
	 )
   (defun insert-today ()
     "Insert today's date into buffer"
     (interactive)
     (insert (format-time-string "%A, %B %e %Y" (current-time))))
   (defun auto-update-c-source-file ()
      (save-excursion
	;; Replace HHHH with file name sans suffix
	(while (search-forward "HHHH" nil t)
	  (save-restriction
	    (narrow-to-region (match-beginning 0) (match-end 0))
	    (replace-match (concat (file-name-sans-extension (file-name-nondirectory buffer-file-name)) ".h") t
			   )
	    ))
	)
      (save-excursion
	;; Replace @@@ with file name
	(while (search-forward "@@@" nil t)
	  (save-restriction
	    (narrow-to-region (match-beginning 0) (match-end 0))
	    (replace-match (file-name-nondirectory buffer-file-name))
	    ))
	)
      (save-excursion
	;; replace DDDD with today's date
	(while (search-forward "DDDD" nil t)
	  (save-restriction
	    (narrow-to-region (match-beginning 0) (match-end 0))
	    (replace-match "")
	    (insert-today)
	    ))
	)
      )


(provide 'emacs-sm-auto-insert)
;;; emacs-sm-auto-insert.el ends here
