;;This is where all my .el lives
(setq load-path (cons "~/emacs" load-path))
;;-----------------------------------------------------------------------------
;; Load Concrete packages

;; Keyboard related modification
(load "emacs-sm-kbd.el")

(if (eq system-type 'windows-nt)
    ;;If I am in Windows then let's load the Cygwin stuff
    (load "emacs-sm-cygwin.el")
  ;; Open in Maximized Window Mode.
)


;; Load various programming helper
(load "~/emacs/emacs-sm-prog-misc.el")

;; Load C and C++ realted settings
(load "emacs-sm-ccmode.el")


;;Load the org mode
(load "emacs-sm-org.el")


;;CEDET realted packages
(load "emacs-sm-cedet.el")

;; Load the ECB 
(add-to-list 'load-path "~/emacs/ecb-2.40")
(require 'ecb)
(load "my-ecb-setup.el")

	

;; check wich Emacs we are running, and on which platform
(cond
     ((string-match "23.1.1" (emacs-version))
        (message "customizing GNU Emacs 23.1.1")

     )
)


(cond
     ((string-match "24.1" (emacs-version))
        (message "customizing GNU Emacs 24.1")
	
)
)


;;Load Visual Theme
(load "emacs-sm-theme.el")

