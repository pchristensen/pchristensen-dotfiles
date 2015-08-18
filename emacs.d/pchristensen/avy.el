;; https://github.com/abo-abo/avy
;; http://emacsredux.com/blog/2015/07/19/ace-jump-mode-is-dead-long-live-avy/

(avy-setup-default)
;; TODO This is supposed to bind  avy-isearch to C-' in isearch-mode-map,
;;   so that you can select one of the currently visible isearch candidates using avy
;;   but I can't figure out how it works

;; Key Bindings
(global-set-key (kbd "M-g g") 'avy-goto-line)
(global-set-key (kbd "M-g M-g") 'avy-goto-line)
(global-set-key (kbd "C-c j") 'avy-goto-char-2)
