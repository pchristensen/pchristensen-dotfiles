;;----------AUTOCOMPLETE-------------------------------------------------------------------------------
;; http://cx4a.org/software/auto-complete/
;; https://github.com/m2ym/auto-complete
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories (concat emacs-root "vendor/auto-complete/ac-dict"))
(ac-config-default)

