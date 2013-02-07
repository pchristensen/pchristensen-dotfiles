
;; ;; https://github.com/rmm5t/dotfiles/blob/master/emacs.d/rmm5t/dired.el

;;; Dired

;; Allows recursive deletes
(setq dired-recursive-deletes 'top)

;;http://whattheemacsd.com/setup-dired.el-01.html------------------
(require 'dired-details)
(setq-default dired-details-hidden-string "--- ")
(dired-details-install)
;;-----------------------------------------------------------------
