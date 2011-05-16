(add-to-list 'load-path "~/.emacs.d/vendor/")

(setq custom-file "~/.emacs.d/pchristensen/custom.el")
(load custom-file)

(load "pchristensen/env")
(load "pchristensen/global")
(load "pchristensen/defuns")
(load "pchristensen/tabs")
(load "pchristensen/disabled")
(load "pchristensen/utf-8")
(load "pchristensen/grep")
(load "pchristensen/diff")
(load "pchristensen/ido")
(load "pchristensen/dired")
(load "pchristensen/recentf")
(load "pchristensen/zoom")
(load "pchristensen/flymake")
(load "pchristensen/info")
(load "pchristensen/completion")
;; (load "pchristensen/w3m") ;; Not sure if this is worth it, want to try conkeror instead
;; (load "pchristensen/geekstack")

(vendor 'color-theme)
(vendor 'haml-mode)
(vendor 'sass-mode)
(vendor 'erlang)
(vendor 'undo-tree)
(vendor 'paredit)
(vendor 'yaml-mode)
(vendor 'feature-mode)
(vendor 'yasnippet)
(vendor 'slime)
(vendor 'full-ack      'ack 'ack-same 'ack-find-same-file 'ack-find-file 'ack-interactive)

(load "pchristensen/bindings")

;; ;;--------PROJECT----------------------------------------------------------------------------
;; (load-library "groupon") ;; Stuff specific to Groupon
;; (load-library "geekstack") ;; Stuff specific to GeekStack work

;; (load-library "custom") ;;layout customizations
