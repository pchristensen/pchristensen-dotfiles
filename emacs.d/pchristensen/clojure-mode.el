;; https://github.com/jochu/clojure-mode

(defun my-clojure-mode-hook ()
  (rainbow-delimiters))

(eval-after-load 'clojure-mode
  '(progn
     (nrepl-interaction-mode)
     (define-key clojure-mode-map (kbd "C-c C-p") 'force-nrepl-switch-to-repl-buffer)
     (define-key clojure-mode-map (kbd "RET") 'paredit-newline)
     (defun force-nrepl-switch-to-repl-buffer ()
       (interactive)
       (unless (get-buffer nrepl-connection-buffer)
         (nrepl-jack-in))
       (nrepl-switch-to-repl-buffer))
     (add-hook 'clojure-mode-hook 'my-clojure-mode-hook)))
