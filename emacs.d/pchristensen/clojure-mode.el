;; https://github.com/jochu/clojure-mode


(defun force-nrepl-switch-to-repl-buffer ()
  (interactive)
  (unless (get-buffer nrepl-connection-buffer)
    (nrepl-jack-in))
  (nrepl-switch-to-repl-buffer))

(define-key clojure-mode-map (kbd "C-c C-p") 'force-nrepl-switch-to-repl-buffer)
(define-key clojure-mode-map (kbd "RET") 'paredit-newline)
