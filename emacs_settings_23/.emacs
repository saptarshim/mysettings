;;This is where all my .el lives
(setq load-path (cons "~/emacs" load-path))
;;-----------------------------------------------------------------------------
;; Load Concrete packages

;; Keyboard related modification
(load "emacs-sm-kbd.el")
;;CEDET realted packages

(load "emacs-sm-cedet.el")
;;-----------------------------------------------------------------------------
;;'(initial-buffer-choice "~/projects/App/QuantLib")

;; Now Load the Project That I am currently working on
;;(load "emacs-sm-project-windows.el")
;;(load "emacs-sm-project-simpledb.el")

;; Load various programming helper
(load "~/emacs/emacs-sm-prog-misc.el")

;; Load C and C++ realted settings
(load "emacs-sm-ccmode.el")

;; Load the ECB 
(add-to-list 'load-path "~/emacs/ecb-2.40")
(require 'ecb)


;;(load "~/emacs/emacs-sm-mail.el")
;;(load "~/emacs/emacs-sm-tex.el")
;; programming tools & languages
;;(load "~/emacs/emacs-sm-flymake.el")
;;(load "~/emacs/emacs-sm-gdb.el")
;;(load "~/emacs/emacs-sm-python.el")
;;(load "~/emacs/emacs-sm-doxygen.el")
;(load "~/emacs/rc/emacs-rc-elisp.el")
;(load "~/emacs/rc/emacs-rc-ecb.el")
;(load "~/emacs/rc/emacs-rc-prolog.el")
;(load "~/emacs/rc/emacs-rc-javascript.el")
;(load "~/emacs/rc/emacs-rc-scheme.el")
;;(load "~/emacs/rc/emacs-rc-ocaml.el")
;(load "~/emacs/rc/emacs-rc-lisp.el")
;(load "~/emacs/rc/emacs-rc-clojure.el")
;(load "~/emacs/rc/emacs-rc-slime.el")
;(load "~/emacs/rc/emacs-rc-erlang.el")
;(load "~/emacs/rc/emacs-rc-haskell.el")
;(load "~/emacs/rc/emacs-rc-scala.el")
;(load "~/emacs/rc/emacs-rc-sh-mode.el")
;(load "~/emacs/rc/emacs-rc-auto-insert.el")
;(load "~/emacs/rc/emacs-rc-cmake.el")
;;
;; VCS & DVCS
;(load "~/emacs/rc/emacs-rc-mercurial.el")
;(load "~/emacs/rc/emacs-rc-dvc.el")
;(load "~/emacs/rc/emacs-rc-git.el")
;(load "~/emacs/rc/emacs-rc-vcs-misc.el")
;;
;; WWW, IM, social networking & blogging
;;(load "~/emacs/rc/emacs-rc-twitter.el")
;(load "~/emacs/rc/emacs-rc-jabber.el")
;(load "~/emacs/rc/emacs-rc-w3.el")
;(load "~/emacs/rc/emacs-rc-erc.el")
;(load "~/emacs/rc/emacs-rc-w3m.el")
;;(load "~/emacs/rc/emacs-rc-eblogger.el")
;;(load "~/emacs/rc/emacs-rc-lj.el")
;;
;(load "~/emacs/rc/emacs-rc-epg.el")
;(load "~/emacs/rc/emacs-rc-server.el")
;(load "~/emacs/rc/emacs-rc-ess.el")
;(load "~/emacs/rc/emacs-rc-pretty-lambda.el")
;(load "~/emacs/rc/emacs-rc-sdcv.el")
;(load "~/emacs/rc/emacs-rc-iswitchb.el")

;;(load "~/emacs/rc/emacs-rc-timeclock.el")
;;(load "~/emacs/rc/emacs-rc-autocomplete.el")
;(load "~/emacs/rc/emacs-rc-gclient.el")
;; (load "~/emacs/rc/emacs-rc-.el")
;; (load "~/emacs/rc/emacs-rc-.el")

;(defun alexott/get-short-hostname ()
;  (let* ((sys-name (system-name))
;         (idx (string-match "\\." sys-name)))
;    (if idx
;        (substring sys-name 0 idx)
;      sys-name)))

;(let* ((fname (concat "~/emacs/rc/emacs-rc-local-" (alexott/get-short-hostname) ".el")))
;  (when (file-exists-p fname)
;    (load fname)))

;(load "~/emacs/rc/emacs-rc-desktop.el")

;(load "~/emacs/passwords.el.gpg")

;(load custom-file 'noerror)

;; for org-mode
;(setq comment-start nil)

;; for emacs-jabber
;(define-key ctl-x-map "\C-j" jabber-global-keymap)

;;Auto Complete
;;(add-to-list 'load-path "~/.emacs.d/")
;;(require 'auto-complete-config)
;;(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
;;(ac-config-default)




;;Testing new settings once they are ready to be production worthy
;; they will be moved to corresponding .el file inside emacs directory




(load "my-ecb-setup.el")

(if (eq system-type 'windows-nt)
  ;;If I am in Windows then let's load the Cygwin stuff
    (load "emacs-sm-cygwin.el")
  ;; Open in Maximized Window Mode.

)

;;Load the org mode
(load "emacs-sm-org.el")


;;Load Visual Theme
(load "emacs-sm-theme.el")

