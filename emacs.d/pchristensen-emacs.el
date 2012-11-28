(add-to-list 'load-path "~/.emacs.d/vendor/")
(add-to-list 'load-path "~/.emacs.d/elpa/")

(setq custom-file (expand-file-name "~/.emacs.d/pchristensen/custom.el"))
(load custom-file)

(load "pchristensen/env")
(load "pchristensen/hooks")
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

(vendor 'ruby-mode)
(vendor 'rinari)
(vendor 'inf-ruby      'inf-ruby)
(vendor 'yari)
(vendor 'haml-mode)
(vendor 'erlang)
(vendor 'undo-tree)
(vendor 'yaml-mode)
(vendor 'feature-mode)
(vendor 'rspec-mode)
(vendor 'full-ack      'ack 'ack-same 'ack-find-same-file 'ack-find-file 'ack-interactive)
(vendor 'idomenu)
(vendor 'theme-manager)
(vendor 'csv-mode      'csv-mode)
(vendor 'smex)
(vendor 'mo-git-blame  'mo-git-blame-file 'mo-git-blame-current)


(vendor 'package)
(vendor-package 'color-theme "6.5.5")
(vendor-package 'clojure-mode "1.11.5")
(vendor-package 'paredit "22")
(vendor-package 'autopair "0.3")
(vendor-package 'magit "1.1.1" 'magit-status)
(vendor-package 'slime "20100404.1")
(vendor-package 'sass-mode "3.0.14")
(vendor-package 'coffee-mode "0.4.1")
(vendor-package 'js2-mode "20090814")
;; TODO Add rainbow-mode http://julien.danjou.info/rainbow-mode.html (need to figure out 256 color solution first)

(load "pchristensen/bindings")
