;; Copyright (C) 2011 Saptarshi Mondal
;; Author: saptarshi.mondal@gmail.com
;; Description:  his include all programming help related settings
;;(load-file "~/emacs/xcscope.el")
(require 'xcscope)
(setq cscope-do-not-update-database t)

;; Git integration
(add-to-list 'load-path "~/.emacs.d/el-get/magit/lisp")
;;(require 'magit-mode)



;;Auto Complete
;;******(add-to-list 'load-path "~/.emacs.d/")
;;******(require 'auto-complete-config)
;;******(add-to-list 'ac-dictionary-directories "~/emacs//ac-dict")
;;******(ac-config-default)


;; Enable CEDET
(add-to-list 'load-path "~/.emacs.d/el-get/cedet")
(load-file (concat user-emacs-directory "~/.emacs.d/el-get/cedet/cedet-devel-load.el"))
(load-file (concat user-emacs-directory "~/.emacs.d/el-get/cedet/contrib/cedet-contrib-load.el"))

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

