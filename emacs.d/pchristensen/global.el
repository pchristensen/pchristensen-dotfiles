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
(setq line-number-mode 1)

; from http://steve.yegge.googlepages.com/effective-emacs
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'toggle-scroll-bar) (toggle-scroll-bar -1))

;; Explicitly show the and of a buffer
(set-default 'indicate-empty-lines t)

;; Make sure all backup files only live in one place
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;; Trash Can Support
(setq delete-by-moving-to-trash t)

;; Make sure to remove trailing whitespace when saving
(add-hook 'before-save-hook (lambda () (delete-trailing-whitespace)))

(require 'cl)

;; zap-to-char, forward-to-word, backward-to-word, etc
(require 'misc)