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

;;Work around to for activate ECB
;;Alos the ecb-2.40/ecb-upgrade.el files needs to be changed to reflect 
;;that it can work woth CEDET latest version
;;line changed in ecb-upgrade.el
;; (defconst ecb-required-cedet-version-max '(1 2 4 9))
;;
(setq stack-trace-on-error t)
;;ECB Workaround end	

;;Automatically insert headers in Source file
;;The header templates are residing in ~/emacs
(load "emacs-sm-auto-insert.el")

;;Load Visual Theme
(load "emacs-sm-theme.el")

