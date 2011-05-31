;;;--------RUBY--------------------------------------------------------------------------------------------------
;; rmm5t's warning about using deprecated ruby-mode (https://github.com/rmm5t/dotfiles/commit/53e4c06ab246093943a24f88b88e99b11d1575cc)
;; Switched to the old, deprecated, Ruby-team ruby-mode for stability

;; In the Emacs-maintained ruby-mode version:
;; * The ruby-mode maintained by emacs has poor string syntax highlighting and performance problems.
;; * "A string ending in a question mark?" causes trouble and long strings passed as arguments peg the CPU

;(require 'inf-ruby)
(autoload 'ruby-mode "ruby-mode" "Major mode for editing ruby scripts." t)
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))
(autoload 'run-ruby "inf-ruby" "Run an inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby" "Set local key defs for inf-ruby in ruby-mode")
(add-hook 'ruby-mode-hook '(lambda () (inf-ruby-keys)))

;; ;; TODO Ruby Mode - figure out what his stuff does
;;; Ruby

;; Run the current ruby buffer
(defun ruby-eval-buffer()
   "Evaluate the buffer with ruby."
   (interactive)
   (shell-command-on-region (point-min) (point-max) "ruby"))

;; FIXME: it should be available in next versions of ruby-mode.el
(defun ruby-insert-end ()
  (interactive)
  (insert "\n\nend")
  (ruby-indent-line t)
  (previous-line)
  (ruby-indent-line t))

(define-key ruby-mode-map (kbd "C-c >") 'insert-arrow)
(define-key ruby-mode-map (kbd "M-RET") 'ruby-insert-end)

;; Local key bindings
(add-hook 'ruby-mode-hook
          (lambda ()
            ;; (ruby-electric-mode)
            (local-set-key [(control c) (control e)] 'ruby-insert-end)
            (local-set-key [(control meta f1)] 'xmp)
            (local-set-key [(control meta shift f1)] 'ruby-eval-buffer)
            ))

(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("autotest$" . ruby-mode))
(add-to-list 'auto-mode-alist '("irbrc$" . ruby-mode))
(add-to-list 'auto-mode-alist '("sake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("god$" . ruby-mode))


;; ;; Ruby notes from CashNetUSA - kind of cool to use shell over ssh.  There's a lot to understand here.
;; ;; M-x run-ruby uses ruby-program-name -- obviously you want to change 'parasite' to your own vmware image name
;; (setf cnu-ruby-program-name "ssh moore bash -c 'cd /export/web/cnuapp 1>/dev/null 2>&1 && script/console --inf-ruby-mode'")

;; (defun cnu-run-ruby ()
;;   "use the cnu-specific setting to run ruby"
;;   (interactive)
;;   (run-ruby ruby-program-name))


