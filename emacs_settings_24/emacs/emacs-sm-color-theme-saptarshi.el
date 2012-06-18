;; Copyright (C) 2011 Saptarshi Mondal
;; Author: saptarshi.mondal@gmail.com


(defun color-theme-saptarshi ()
  (interactive)
  (color-theme-install
   '(color-theme-saptarshi
      ((background-color . "black")
      (background-mode . dark)
      (border-color . "black")
      (cursor-color . "#eeecec")
      (foreground-color . "cyan")
      (mouse-color . "white"))
     (fringe ((t (:background "black"))))
     (mode-line ((t (:foreground "#ed358a" :background "#121712"))))
     (region ((t (:background "#8d8181"))))
     (font-lock-builtin-face ((t (:foreground "blue"))))
     (font-lock-comment-face ((t (:foreground "#c1c1ff"))))
     (font-lock-function-name-face ((t (:foreground "#cd325c" :bold t))))
     (font-lock-keyword-face ((t (:foreground "green"))))
     (font-lock-string-face ((t (:foreground "#ff80ff"))))
     (font-lock-type-face ((t (:foreground"pink"))))
     (font-lock-variable-name-face ((t (:foreground "cyan"))))
     (minibuffer-prompt ((t (:foreground "#e486e2" :bold t))))
     (font-lock-warning-face ((t (:foreground "Red" :bold t))))
     (font-lock-preprocessor-face ((t (:foreground "blue"))))
     (font-lock-constant-face ((t (:foreground "green"))))
     )))


(provide 'color-theme-saptarshi)

;; ;; If linux use the monospace font
;; (custom-set-faces
;;   ;; custom-set-faces was added by Custom.
;;   ;; If you edit it by hand, you could mess it up, so be careful.
;;   ;; Your init file should contain only one such instance.
;;   ;; If there is more than one, they won't work right.
;;  '(default ((t (:inherit nil :stipple nil :background "black" :foreground "cyan" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "bitstream" :family "Courier 10 Pitch")))))


;; ;; If in windows machine use the Courier New Fonts
;; (if (eq system-type 'windows-nt)
;;   (custom-set-faces
;;   ;; custom-set-faces was added by Custom.
;;   ;; If you edit it by hand, you could mess it up, so be careful.
;;   ;; Your init file should contain only one such instance.
;;   ;; If there is more than one, they won't work right.
;;  '(default ((t (:inherit nil :stipple nil :background "black" :foreground "cyan" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "outline" :family "Courier New")))))
;; )


(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "cyan" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "outline" :family "Verdana")))))

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-buffer-done-kill t)
 '(display-time-mode t)
 '(global-semantic-tag-folding-mode t nil (semantic-util-modes))
 '(initial-scratch-message nil)
 '(semantic-idle-scheduler-idle-time 3)
 '(semantic-self-insert-show-completion-function (lambda nil (semantic-ia-complete-symbol-menu (point))))
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote forward))
 '(use-dialog-box nil)
 '(whitespace-global-mode nil)
 '(whitespace-modes (quote (awk-mode clojure-mode)))
 '(whitespace-silent t))


