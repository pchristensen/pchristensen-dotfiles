;;---------YARI (Ruby Docs)----------------------------------------------------------------------------------------
;; ;; TODO Learn how to use yari.  Ri-emacs neve really worked for me
;; ;; https://github.com/pedz/yari-with-buttons

;; ;; These are some bindings I had hooked up with ri-emacs.
;; ;; TODO see if leftover ri-emacs bindings are useful
;; (add-hook 'ruby-mode-hook (lambda ()
;;                             (local-set-key "\C-c\C-dd" 'ri)
;;                             (local-set-key "\C-c\t" 'ri-ruby-complete-symbol)
;;                             (local-set-key "\C-c\C-da" 'ri-ruby-show-args)))

;; ;; rmm5t's ri-emacs settings - also might be useful
;; ;;
;; (add-to-list 'load-path (expand-file-name "~/.emacs.d/vendor/ri-emacs"))
;; (setq ri-ruby-script (expand-file-name "~/.emacs.d/vendor/ri-emacs/ri-emacs.rb"))
;; (autoload 'ri "ri-ruby" nil t)

;; (add-hook 'ruby-mode-hook
;;           (lambda ()
;;             (local-set-key [(f1)] 'ri)
;; ;;             (local-set-key "\M-\C-i" 'ri-ruby-complete-symbol)
;;             (local-set-key [(meta f1)] 'ri-ruby-show-args)
;;             ))
