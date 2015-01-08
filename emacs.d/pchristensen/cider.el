
;; FROM cider README - https://github.com/clojure-emacs/cider ---------------

(add-hook 'cider-mode-hook #'eldoc-mode)
(setq nrepl-log-messages t)
(setq nrepl-hide-special-buffers t)
(setq cider-show-error-buffer 'only-in-repl)
(setq cider-stacktrace-fill-column 80)
(setq nrepl-buffer-name-show-port t)
(setq cider-repl-wrap-history t)
(add-hook 'cider-repl-mode-hook #'subword-mode)
(add-hook 'cider-repl-mode-hook #'paredit-mode)


;; Autocompletion
;; (add-hook 'cider-repl-mode-hook #'company-mode)
;; (add-hook 'cider-mode-hook #'company-mode)

;; ;; Make C-c C-z switch to the CIDER REPL buffer in the current window:
;; (setq cider-repl-display-in-current-window t)

;; ;; TODO-----------------------------------------------------------------

;; If your tests are not following the some.ns-test naming convention you can customize
;; the variable cider-test-infer-test-ns. It should be bound to a function that takes the
;; current ns and returns the matching test ns (which may be the same as the current ns).




;; ;; Not sure if I want these---------------------------------------------
;; ;; Prevent the auto-display of the REPL buffer in a separate window after connection is established:
; (setq cider-repl-pop-to-buffer-on-connect nil)
