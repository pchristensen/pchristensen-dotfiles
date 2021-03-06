(add-to-list 'load-path "~/.emacs.d/vendor/")
(add-to-list 'load-path "~/.emacs.d/elpa/")

(setq custom-file (expand-file-name "~/.emacs.d/pchristensen/custom.el"))
(load custom-file)

(load "pchristensen/env")
(load "pchristensen/hooks")
(load "pchristensen/global")
(load "pchristensen/defuns")
(load "pchristensen/tabs")
(load "pchristensen/utf-8")
(load "pchristensen/grep")
(load "pchristensen/diff")
(load "pchristensen/recentf")
(load "pchristensen/zoom")
(load "pchristensen/flymake")
(load "pchristensen/hl-line")
(load "pchristensen/info")


;;--- PACKAGED LIBRARIES----------------
;; - all of the libraries are loaded by (package-initialize) in pchristensen/package.el
(vendor 'package)

;;--- SUBMODULE LIBRARIES---------------
(vendor 'ruby-mode)
(vendor 'rinari)
(vendor 'inf-ruby      'inf-ruby)
(vendor 'yari)
(vendor 'haml-mode)
(vendor 'erlang)
(vendor 'yaml-mode)
(vendor 'feature-mode)
(vendor 'rspec-mode)
(vendor 'full-ack      'ack 'ack-same 'ack-find-same-file 'ack-find-file 'ack-interactive)
(vendor 'idomenu)
(vendor 'theme-manager)
(vendor 'csv-mode      'csv-mode)
(vendor 'smex)
(vendor 'mo-git-blame  'mo-git-blame-file 'mo-git-blame-current)
(vendor 'ido)
(vendor 'dired)


(load "pchristensen/bindings")

(load "pchristensen/color-theme")
