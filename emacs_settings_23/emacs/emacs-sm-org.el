(add-to-list 'load-path "~/emacs/org-7.7/lisp")
(load-file "~/emacs/org-7.7/lisp/org.el")
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(setq flyspell-mode t)




