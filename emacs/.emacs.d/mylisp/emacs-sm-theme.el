;; Copyright (C) 2011 Saptarshi Mondal
;; Author: saptarshi.mondal@gmail.com
;; Description: All theme related settings

;;-----------------------------------------------------------------------------
;; Load the color theme packages
(add-to-list 'load-path "~/.emacs.d/colorthemes/color-theme-6.6.0")
(require 'color-theme)
(color-theme-initialize)


(load-file "~/.emacs.d/mylisp/emacs-sm-color-theme-saptarshi.el")
(color-theme-saptarshi)
(global-font-lock-mode 1)
(setq font-lock-maximum-decoration 3)	

;;-----------------------------------------------------------------------------
;; Enable line Number
;;(load-file "~/emacs/linum.el")
;;(require 'linum)
;;******(require 'linum+)
;;(require 'linum-ex)
(global-linum-mode 1)
;;******(setq linum-format "%d ")
;;(column-number-mode t)

;;-----------------------------------------------------------------------------
;; Setup time mode
(autoload 'display-time "time" "Display Time" t)
(condition-case err
    (display-time)
  (error (message "Unable to load Time package.")))
(setq display-time-24hr-format nil)
(setq display-time-day-and-date t)

;;-----------------------------------------------------------------------------
;;Setup initial size and position
;; (setq default-frame-alist
;;       '((top . 50) (left . 570)
;;         (width . 90) (height . 50)
;;         (cursor-type . box)))

;;-----------------------------------------------------------------------------
;;Miscelaneous Otion
;;-----------------------------------------------------------------------------
;;Calender
(setq calendar-week-start-day 1)
;; use y/n instead of yes/no
(fset 'yes-or-no-p 'y-or-n-p)
(custom-set-variables
;'(scalable-fonts-allowed t)
'(uniquify-buffer-name-style (quote forward))
'(use-dialog-box nil)
'(show-paren-mode t)
'(tool-bar-mode nil)
'(custom-buffer-done-kill t)
'(initial-scratch-message nil)
'(transient-mark-mode t))

;; User namex
(setq user-full-name "Saptarshi Mondal")

;; Scroll just one line when hitting the bottom of the window
(setq scroll-step 1)
;;Don't want the scroll bar
(scroll-bar-mode nil)


;; Frame title bar formatting to show full path of file
(setq-default
 frame-title-format
 (list '((buffer-file-name " %f" (dired-directory 
	 			  dired-directory
				  (revert-buffer-function " %b"
				  ("%b - Dir:  " default-directory)))))))

(setq-default
 icon-title-format
 (list '((buffer-file-name " %f" (dired-directory
                                  dired-directory
                                  (revert-buffer-function " %b"
                                  ("%b - Dir:  " default-directory)))))))


;; make searches case-Insensitive
(set-default 'case-fold-search t)

;; C-k kills whole line and newline if at beginning of line
;;(setq kill-whole-line t)

;;Keep the recently open File in Buffer
;;(require 'recentf)
;;    (recentf-mode 1)

;; save and restore my buffers every time
;;(desktop-save-mode 1)

;;Replace Highlighted text with typed text
(delete-selection-mode 1)

;; IDO Mode related settings
 (setq ido-enable-flex-matching t)
 (setq ido-everywhere t)
 (ido-mode t)
 (setq ido-create-new-buffer 'always)
 (setq ido-file-extensions-order '(".cpp" ".h" ".hpp" ".c"))
(icomplete-mode 1)


;;Highlight Current Line
(require 'hl-line+)
;;(global-hl-line-mode nil)
(toggle-hl-line-when-idle 1)
;; To customize the background color
;;(set-face-background 'hl-line "#111")  
;;(set-face-background 'hl-line "red")  


;;Change the color of the cursor
(set-cursor-color "green")

;;dirtree related configuration
;;****(load "dirtree.el")
;;*****(require 'dirtree)


;; create a directory to hold all emacs backup files
(setq backup-directory-alist '(("." . "~/emacs-backups")))

;; Don't display the 'Welcome to GNU Emacs' buffer on startup
(setq inhibit-startup-message t)

;;
;; Mouse pointer shouldn't intefere
;; with the cursor.
;;
(if window-system
    (mouse-avoidance-mode 'cat-and-mouse))

(setq-default ispell-program-name "aspell")
(setq flyspell-prog-mode t)

;; Setup a background Image
;;(custom-set-faces     '(default ((t (:stipple nil :background ((image :type jpeg :file "~/emacs/fish.png") :origin display) :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 101 :width normal :family "misc-fixed")))))
