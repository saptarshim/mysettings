;;; emacs-sm-javamode.el ---

;; Copyright (C) 2012 Saptarshi Mondal
;;
;; Author: Saptarshi.Mondal@gmail.com
;; Keywords:  This holds my java related settings

(defun my-linux-c-mode ()
 "C mode with adjusted defaults for use with the linux kernel."
 (c-set-style "linux"))

(add-hook 'java-mode-hook 'my-linux-c-mode)

;;; emacs-sm-javamode.el ends here
