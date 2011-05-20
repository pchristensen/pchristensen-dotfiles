(add-to-list 'load-path "~/.emacs.d/vendor/")

(setq custom-file (expand-file-name "~/.emacs.d/pchristensen/custom.el"))
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
(load "pchristensen/hl-line")
(load "pchristensen/info")
;; (load "pchristensen/w3m") ;; Not sure if this is worth it, want to try conkeror instead
;; (load "pchristensen/geekstack")

(vendor 'color-theme)
(vendor 'ruby-mode)
(vendor 'rinari)
(vendor 'inf-ruby      'inf-ruby)
(vendor 'yari)
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
(vendor 'idomenu)
(vendor 'theme-manager)
(vendor 'autopair)
(vendor 'auto-complete)
(vendor 'csv-mode      'csv-mode)
(vendor 'magit         'magit-status)

;; TODO Add rainbow-mode http://julien.danjou.info/rainbow-mode.html (need to figure out 256 color solution first)

(load "pchristensen/bindings")

