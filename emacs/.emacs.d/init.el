;;This is where all my .el lives
(setq load-path (cons "~/.emacs.d/mylisp" load-path))
;;-----------------------------------------------------------------------------
;; Keyboard related modification
(load "emacs-sm-kbd.el")

;; Load various programming helper
(load "emacs-sm-prog-misc.el")

;; Load C and C++ realted settings
(load "emacs-sm-ccmode.el")

;; Load Java realted settings
(load "emacs-sm-javamode.el")

(setq stack-trace-on-error t)

;;Automatically insert headers in Source file
(load "emacs-sm-auto-insert.el")

;;Load Visual Theme
(load "emacs-sm-theme.el")

;; Set up el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))

;;Enable Company mode globally
(add-to-list 'load-path "~/.emacs.d/el-get/company-mode")
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

;; Byte recompile everything at startup if not done already
;;(byte-recompile-directory (expand-file-name "~/.emacs.d") 0)

;; Setup the Spell Checking related setting
;;for the windows environment
(if (eq system-type 'windows-nt)
       (add-to-list 'exec-path "C:/Program Files (x86)/Aspell/bin/")
)

(setq ispell-program-name "aspell")
(setq ispell-personal-dictionary "~/.emacs.d/.ispell")
(require 'ispell)

