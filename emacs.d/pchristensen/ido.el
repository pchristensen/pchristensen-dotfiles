
;;; Interactive do, find-file and iswitchb replacement with fuzzy/flex matching.

;; http://www.lispcast.com/ido-emacs.html
(ido-mode t)
(setq ido-enable-flex-matching t) ; fuzzy matching is a must have
(setq ido-enable-last-directory-history t) ; forget latest selected directory names

(autoload 'idomenu "idomenu" nil t)  ; see http://www.emacswiki.org/emacs/ImenuMode#toc10 for contrast
(global-set-key "\M-i" 'idomenu)
