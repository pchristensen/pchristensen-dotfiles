(require 'cl)

(show-paren-mode t)
(set-frame-position (selected-frame) 0 50)
(transient-mark-mode t)

; from http://www.gnu.org/software/emacs/windows/old/faq4.html#windows-frames
(setq default-frame-alist
      '((top . 0) (left . 400)
	(width . 120) (height . 62)))

(setq initial-frame-alist '((top . 0) (left . 0)))

; from http://steve.yegge.googlepages.com/effective-emacs
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

; from http://steve.yegge.googlepages.com/my-dot-emacs-file
(defvar emacs-root (if (or (eq system-type 'gnu/linux)
			   (eq system-type 'cyqwin)
			   (eq system-type 'linux))
		       "/home/peter/"
		       "C:/Users/Peter/Documents/nix/"))

(defvar elisp-root "src/elisp/")
(defvar cnu-code-root "code/cnuapp/")

(add-to-list 'load-path (concat emacs-root "src/lisp/"))
(add-to-list 'load-path (concat emacs-root "src/elisp/"))
(setq inhibit-splash-screen t)

;INFO setup
;;http://www.emacswiki.org/cgi-bin/wiki/InfoPath
;http://www.gnu.org/software/hello/manual/texinfo/Other-Info-Directories.html#Other-Info-Directories
(require 'info)
(setq Info-directory-list
      (cons (expand-file-name (concat emacs-root "info"))
	    Info-default-directory-list))

; other places with goodies:
; http://steve.yegge.googlepages.com/saving-time

; http://www.lispcast.com/ido-emacs.html
(ido-mode 1)

(iswitchb-mode 1)

(require 'ack-emacs)

; --------
(setq default-indent-tabs-mode nil)

(setq default-directory "~/")


;---Convenience Key remappings-------------------
(global-set-key "\C-c^" 'enlarge-window)
(global-set-key [f9] '(lambda () (interactive) (enlarge-window 5)))
(global-set-key [f8] '(lambda () (interactive) (shrink-window 5)))
(global-set-key "\C-xp" '(lambda () (interactive) (other-window -1)))
; from http://steve.yegge.googlepages.com/effective-emacs
;(global-set-key "\C-x\C-m" 'execute-extended-command) ;was compose-mail
;(global-set-key "\C-c\C-m" 'execute-extended-command) 
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-ring-save)
 

(defun swap-windows ()
  "If you have 2 windows, it swaps them."
  (interactive)
  (cond ((not (= (count-windows) 2)) 
	 (message "You need exactly 2 windows to do this."))
	(t 
	 (let* ((w1 (first (window-list)))
		(w2 (second (window-list)))
		(b1 (window-buffer w1))
		(b2 (window-buffer w2))
		(s1 (window-start w1))
		(s2 (window-start w2)))
	   (set-window-buffer w1 b2)
	   (set-window-buffer w2 b1)
	   (set-window-start w1 s2)
	   (set-window-start w2 s1)))))



;Bill Clementson: SLIME Tips and Techniques - Part 5 (Alternative Browsers in Emacs)
;(add-to-list 'load-path "/usr/share/emacs/site-lisp/w3m")
;(if (or (eq system-type 'gnu/linux)
;	(eq system-type 'cyqwin)
;	(eq system-type 'linux))
;    (progn
;      (require 'w3m-load)
;      (setq browse-url-browser-function 'w3m-browse-url)))

;;-------CNU stuff---------------------------------------
;(add-to-list 'load-path "~/.elisp")
;; Perforce
(load-library "p4")
(p4-set-p4-executable "/home/peter/bin/p4")
(setenv "P4CONFIG" "/home/peter/.p4config")
(defun cbl-p4-describe-changelist-at-point ()
  (interactive)
  (let ((number (format "%d" (or (number-at-point) (read-minibuffer "Changelist number: ")))))
    (p4-describe-internal (list p4-default-diff-options number))))
;(global-set-key [(s ?.)] 'cbl-p4-describe-changelist-at-point)
(load "p4-hacks")

;(setq tags-file-name "/export/web/TAGS")
;(setq tags-file-name "/export/bug/69338/TAGS")
(setq tags-file-name "/export/bug/122534/TAGS")

;;--------Ruby stuff-------------------------------------
(require 'inf-ruby)
(autoload 'ruby-mode "ruby-mode" "Major mode for editing ruby scripts." t)
(setq auto-mode-alist (cons '("\\.rb$" . ruby-mode) auto-mode-alist))
(setq interpreter-mode-alist (append '(("ruby" . ruby-mode)) interpreter-mode-alist))
(autoload 'run-ruby "inf-ruby" "Run an inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby" "Set local key defs for inf-ruby in ruby-mode")
(add-hook 'ruby-mode-hook '(lambda () (inf-ruby-keys)))

;; M-x run-ruby uses ruby-program-name -- obviously you want to change 'parasite' to your own vmware image name
(setf ruby-program-name "ssh noyce bash -c 'cd /export/web/cnuapp 1>/dev/null 2>&1 && script/console --inf-ruby-mode'")
