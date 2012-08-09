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

;; Load Java realted settings
(load "emacs-sm-javamode.el")



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


);;Work around to for activate ECB
;;Alos the ecb-2.40/ecb-upgrade.el files needs to be changed to reflect 
;;that it can work woth CEDET latest version
;;line changed in ecb-upgrade.el
;; (defconst ecb-required-cedet-version-max '(1 2 4 9))
;;
(setq stack-trace-on-error t)
;;ECB Workaround end	

;;Load Visual Theme
(load "emacs-sm-theme.el")

