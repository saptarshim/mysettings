;; Copyright (C) 2011 Saptarshi Mondal
;; Author: saptarshi.mondal@gmail.com
;; Description:  his include all programming help related settings
;;(load-file "~/emacs/xcscope.el")
(require 'xcscope)
(setq cscope-do-not-update-database t)

;; Git integration
(setq load-path (cons "~/emacs/git-emacs" load-path))
(require 'git-emacs)


;;Auto Complete
;;(add-to-list 'load-path "~/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/emacs//ac-dict")
(ac-config-default)