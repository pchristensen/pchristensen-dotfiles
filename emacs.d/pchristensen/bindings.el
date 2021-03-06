;; ;; TODO Collect my keybindings scattered around my files
;; ;; TODO Review remaining keybindings from rmm5t

;;----------WINDMOVE-----------------------------------------------------------------------------------
;; ;; Window navigation
(windmove-default-keybindings 'meta)

(global-set-key "\M-8" 'windmove-up)
(global-set-key "\M-2" 'windmove-down)
(global-set-key "\M-4" 'windmove-left)
(global-set-key "\M-6" 'windmove-right)

(global-set-key (kbd "ESC <up>") 'windmove-up)
(global-set-key (kbd "ESC <down>") 'windmove-down)
(global-set-key (kbd "ESC <left>") 'windmove-left)
(global-set-key (kbd "ESC <right>") 'windmove-right)


;;---------KEY MAPPING----------------------------------------------------------------------------------
(global-set-key "\C-c^" 'enlarge-window)
(global-set-key [f9] '(lambda () (interactive) (enlarge-window 5)))
(global-set-key [f8] '(lambda () (interactive) (shrink-window 5)))
; from http://steve.yegge.googlepages.com/effective-emacs
; (global-set-key "\C-x\C-m" 'execute-extended-command) ;was compose-mail ; need it to be smex - set in smex.el
(global-set-key "\C-c\C-m" 'execute-extended-command)

(global-set-key "\M-s" 'isearch-forward-regexp)
(global-set-key "\M-r" 'isearch-backward-regexp)

(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-ring-save)

(global-set-key "\C-x\M-o" '(lambda () (interactive) (other-window -1)))

(global-set-key "\M-k" 'copy-line)
(global-set-key "\M-'" 'match-paren)  ;; was abbrev-prefix-mark
(global-set-key (kbd "M-~") 'push-mark-no-activate)
(global-set-key (kbd "M-`") 'jump-to-mark)

;;; Global key bindigns

;; How to Define Keyboard Shortcuts in Emacs
;; http://xahlee.org/emacs/keyboard_shortcuts.html

;; ;; https://github.com/rmm5t/dotfiles/blob/master/emacs.d/rmm5t/bindings.el

;; ;; Window manipulation
;; (global-set-key [(control kp-6)] 'enlarge-window-horizontally)
;; (global-set-key [(control kp-4)] 'shrink-window-horizontally)
;; (global-set-key [(control kp-8)] 'enlarge-window)
;; (global-set-key [(control kp-2)] 'shrink-window)

;; ;; Find stuff
;; (global-set-key [(f2)]              'ack-default-directory)
;; (global-set-key [(control f2)]      'ack-same)
;; (global-set-key [(control meta f2)] 'ack)
;; (global-set-key [(meta f2)]         'find-name-dired)
;; (global-set-key [(shift f2)]        'occur)

;; ;; Refresh-like
;; (global-set-key [(f5)]         'revert-buffer)
;; (global-set-key [(control f5)] 'toggle-read-only)

;; ;; Indenting and alignment
;; (global-set-key [(f8)]         'indent-region)
;; (global-set-key [(control f8)] 'align)
;; (global-set-key [(shift f8)]   'align-current)
;; (global-set-key [(meta f8)]    'align-regexp)

;; ;; Version control and change related
;; ;(global-set-key [(control f9)]      'rails-svn-status-into-root)  ;; Move to rails mode?
;; ;(global-set-key [(control meta f9)] (lambda () (interactive) (svn-status default-directory)))
;; (global-set-key [(control f9)] (lambda () (interactive) (magit-status default-directory)))
;; (global-set-key [(f9)]         (lambda () (interactive) (magit-status default-directory)))
;; (global-set-key [(meta f9)]    'autotest-switch)  ;; Move to ruby/rails mode?

;; ;; Map the window manipulation keys to meta 0, 1, 2, o
;; (global-set-key (kbd "M-3") 'split-window-horizontally) ; was digit-argument
;; (global-set-key (kbd "M-2") 'split-window-vertically) ; was digit-argument
;; (global-set-key (kbd "M-1") 'delete-other-windows) ; was digit-argument
;; (global-set-key (kbd "M-0") 'delete-window) ; was digit-argument
;; (global-set-key (kbd "M-o") 'other-window) ; was facemenu-keymap
;; ;; Replace dired's M-o
;; (add-hook 'dired-mode-hook (lambda () (define-key dired-mode-map (kbd "M-o") 'other-window))) ; was dired-omit-mode
;; ;; Replace ibuffer's M-o
;; (add-hook 'ibuffer-mode-hook (lambda () (define-key ibuffer-mode-map (kbd "M-o") 'other-window))) ; was ibuffer-visit-buffer-1-window
;; ;; To help Unlearn C-x 0, 1, 2, o
;; (global-unset-key (kbd "C-x 3")) ; was split-window-horizontally
;; (global-unset-key (kbd "C-x 2")) ; was split-window-vertically
;; (global-unset-key (kbd "C-x 1")) ; was delete-other-windows
;; (global-unset-key (kbd "C-x 0")) ; was delete-window
;; (global-unset-key (kbd "C-x o")) ; was other-window

;; ;; Repeat
;; (global-set-key [(control z)] 'repeat) ; was suspend-frame

;; ;; Mac OS X conventions
;; (global-set-key (kbd "M-a") 'mark-whole-buffer) ; was backward-sentence.

;; ;; Find matching parens
;; (global-set-key (kbd "C-'") 'match-paren)

;; ;; Easy inserts
;; (global-set-key (kbd "C-.") 'insert-arrow)

;; ;; ibuffer > list-buffers
;; (global-set-key (kbd "C-x C-b") 'ibuffer)

;; ;; Easier buffer killing
;; (global-unset-key (kbd "M-k"))
;; (global-set-key (kbd "M-K") 'kill-this-buffer)

;; ;; Improved navigation and editing (assumes misc.el)
;; (global-set-key (kbd "M-Z") 'zap-up-to-char)
;; (global-set-key (kbd "M-F") 'forward-to-word)
;; (global-set-key (kbd "M-B") 'backward-to-word)
