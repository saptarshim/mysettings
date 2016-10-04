;;-----------------------------------------------------------------------------
;; Saptarshi Key Binding Start
;;-----------------------------------------------------------------------------

;; Modify the Mac command key to act as an aditional meta
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)

;; Meta
(global-set-key "\M-\C-r" 'query-replace)
(global-set-key "\M-r" 'replace-string)
(global-set-key "\M-g" 'goto-line)
(global-set-key "\M-k" 'next-line)
(global-set-key "\M-i" 'previous-line)
(global-set-key "\M-j" 'backward-char)
(global-set-key "\M-l" 'forward-char)



; Map the window manipulation keys to meta 0, 1, 2, o
(global-set-key (kbd "M-3") 'split-window-horizontally) ; was digit-argument
(global-set-key (kbd "M-2") 'split-window-vertically) ; was digit-argument
(global-set-key (kbd "M-1") 'delete-other-windows) ; was digit-argument
(global-set-key (kbd "M-0") 'delete-window) ; was digit-argument
(global-set-key (kbd "M-o") 'other-window) ; was facemenu-keymap


;; Cntrl Keys C-x <Right>
(global-set-key [C-<right>] 'next-buffer)
(global-set-key [C-<left>] 'previous-buffer)
(global-set-key [C-tab] 'other-window)

;;Function Key
(define-key global-map [f1] 'help-command)
(global-set-key [f3] 'repeat-complex-command)
;;(global-set-key [f4] ')
(global-set-key [f5] 'eval-current-buffer)
(global-set-key [f6] 'grep)
(global-set-key [f7] 'compile)
(global-set-key [f8] 'find-file)
(global-set-key [f9] 'save-buffer)
(g\lobal-set-key [f10] 'buffer-menu)
(global-set-key [f11] 'semantic-symref)
(global-set-key [f12] 'semantic-ia-fast-jump)

;;Control + Fn Key Shortcuts
(global-set-key [C-f1] 'eassist-list-methods)
;;C-f2 is reserved for book mark package
(global-set-key [C-f3] 'next-error)

;;Spelling related kbd binding
(global-set-key (kbd "M-9") 'ispell)



;;csope related keyboard shortcuts
(define-key global-map [(control f4)]  'cscope-pop-mark)
(define-key global-map [(control f5)]  'cscope-find-this-text-string)
(define-key global-map [(control f6)]  'cscope-find-this-symbol)
(define-key global-map [(control f7)]  'cscope-find-functions-calling-this-function)
(define-key global-map [(control f8)]  'cscope-find-called-functions)
(define-key global-map [(control f9)]  'cscope-prev-symbol)
(define-key global-map [(control f10)] 'cscope-next-symbol)


;;the the default for the compilation behaviours
(set-default 'compile-command "make -j8")
(setq compilation-scroll-output t)
(setq compilation-read-command nil)
;;Save all buffers before compilation by default
(setq compilation-ask-about-save nil)

 
;;fancy transparency
(defun djcb-opacity-modify (&optional dec)
  "modify the transparency of the emacs frame; if DEC is t,
    decrease the transparency, otherwise increase it in 10%-steps"
  (let* ((alpha-or-nil (frame-parameter nil 'alpha)) ; nil before setting
   (oldalpha (if alpha-or-nil alpha-or-nil 100))
   (newalpha (if dec (- oldalpha 10) (+ oldalpha 10))))
    (when (and (>= newalpha frame-alpha-lower-limit) (<= newalpha 100))
      (modify-frame-parameters nil (list (cons 'alpha newalpha))))))
 
;; C-8 will increase opacity (== decrease transparency)
;; C-9 will decrease opacity (== increase transparency
;; C-0 will returns the state to normal
(global-set-key (kbd "C-8") '(lambda()(interactive)(djcb-opacity-modify)))
(global-set-key (kbd "C-9") '(lambda()(interactive)(djcb-opacity-modify t)))
(global-set-key (kbd "C-0") '(lambda()(interactive)
                               (modify-frame-parameters nil `((alpha . 100)))))



;;
;; Saptarshi Key Bindling End
;;-----------------------------------------------------------------------------


