;;; emacs-sm-ccmode.el ---

;; Copyright (C) 2011 Saptarshi Mondal
;;
;; Author: Saptarshi.Mondal@gmail.com
;; Keywords:

(defun my-linux-c-mode ()
 "C mode with adjusted defaults for use with the linux kernel."
 (c-set-style "linux"))

(add-hook 'c-mode-hook 'my-linux-c-mode)
(add-hook 'c++-mode-hook 'my-linux-c-mode)

;;; emacs-sm-ccmode.el ends here
