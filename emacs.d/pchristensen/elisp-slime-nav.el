;; http://whattheemacsd.com//init.el-05.html
;; https://github.com/purcell/elisp-slime-nav

(add-hook 'emacs-lisp-mode-hook (lambda () (elisp-slime-nav-mode t)))
(eval-after-load 'elisp-slime-nav '(diminish 'elisp-slime-nav-mode))
