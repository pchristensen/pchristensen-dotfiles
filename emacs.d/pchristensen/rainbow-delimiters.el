
;; TODO Probably not necessary with package-initialize
(require 'rainbow-delimiters)

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; TODO Add mode hooks if global is inappropriate, e.g.:
;; (add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
