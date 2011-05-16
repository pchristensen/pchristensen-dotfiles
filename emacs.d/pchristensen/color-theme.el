
;; pretty colors
(if (fboundp 'color-theme-initialize) (color-theme-initialize))
(setq color-theme-is-global t)
(color-theme-dark-laptop)
;; ;; Some themese I don't hate
;; (color-theme-arjen)
;; (color-theme-simple-1)
;; (color-theme-calm-forest)
;; (color-theme-charcoal-black)
;; (color-theme-gray30)

;uncomment if you want to see all themes.  find one you like, and change the color-theme- call above
;(require 'theme-manager)
;(define-key global-map [(C-f10)] 'theme-prev)
;(define-key global-map [(C-f11)] 'theme-next)

