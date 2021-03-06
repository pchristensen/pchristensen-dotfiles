
;;;; https://github.com/rmm5t/dotfiles/blob/master/emacs.d/rmm5t/global.el
;;
;; ;; Use commeand as the meta key
;; (setq ns-command-modifier (quote meta))

(setq default-directory "~/")

(setq inhibit-startup-message t)
(setq inhibit-splash-screen t)

(fset 'yes-or-no-p 'y-or-n-p)

;; Highlight regions and add special behaviors to regions
;; "C-h d transient" for more info
(transient-mark-mode t)
(blink-cursor-mode t)
(show-paren-mode t)

;; Show line and column numbers in the status bad
(setq column-number-mode 1)
(global-linum-mode 0)

; from http://steve.yegge.googlepages.com/effective-emacs
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'toggle-scroll-bar) (toggle-scroll-bar -1))

;; Explicitly show the and of a buffer
(set-default 'indicate-empty-lines t)

;; Make sure all backup files only live in one place
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(setq auto-save-default nil)

;; Trash Can Support
(setq delete-by-moving-to-trash t)

;; Make sure to remove trailing whitespace when saving
(add-hook 'before-save-hook (lambda () (delete-trailing-whitespace)))

(require 'cl)

;; zap-to-char, forward-to-word, backward-to-word, etc
(require 'misc)

(iswitchb-mode 1)
(defalias 'list-buffers 'ibuffer)

(setq kill-whole-line t)

;; http://whattheemacsd.com/sane-defaults.el-01.html-------------
;; Auto refresh buffers
(global-auto-revert-mode 1)

;; Also auto refresh dired, but be quiet about it
(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose nil)

;;---------------------------------------------------------------
;; http://emacsredux.com/blog/2013/04/21/camelcase-aware-editing/
;; enable for all programming modes
(add-hook 'prog-mode-hook 'subword-mode)

;;---------------------------------------------------------------
;; http://endlessparentheses.com/improving-emacs-file-name-completion.html?source=rss

(setq read-file-name-completion-ignore-case t)
(setq read-buffer-completion-ignore-case t)

;;----------UNIQUIFY-----------------------------------------------------------------------------------
;; make duplicate buffer names clearer
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; ;; TODO Figure out what ispell is - it sounds cool
;; ;; 'brew install aspell --lang=en' (instead of ispell)
;; (setq-default ispell-program-name "aspell")
;; (setq ispell-list-command "list")
;; (setq ispell-extra-args '("--sug-mode=ultra"))
