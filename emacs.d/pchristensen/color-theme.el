
;; pretty colors
(add-to-list 'load-path "~/emacs/site-lisp/color-theme")
(require 'color-theme)
(if (fboundp 'color-theme-initialize) (color-theme-initialize))
(setq color-theme-is-global t)
(load "color-theme-yanowitz")
(color-theme-arjen)
;uncomment if you want to see all themes.  find one you like, and
;change the color-theme- call above
;(require 'theme-manager)
;(define-key global-map [(C-f10)] 'theme-prev)
;(define-key global-map [(C-f11)] 'theme-next)

