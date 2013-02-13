
;; ;; https://github.com/rmm5t/dotfiles/blob/master/emacs.d/rmm5t/dired.el

;;; Dired
(require 'dired)

;; Allows recursive deletes
(setq dired-recursive-deletes 'top)

;;http://whattheemacsd.com/setup-dired.el-01.html------------------
(require 'dired-details)
(setq-default dired-details-hidden-string "--- ")
(dired-details-install)
;;-----------------------------------------------------------------

;;http://whattheemacsd.com/setup-dired.el-02.html------------------
(defun dired-back-to-top ()
  (interactive)
  (beginning-of-buffer)
  (dired-next-line 4))

(define-key dired-mode-map
  (vector 'remap 'beginning-of-buffer) 'dired-back-to-top)

(defun dired-jump-to-bottom ()
  (interactive)
  (end-of-buffer)
  (dired-next-line -1))

(define-key dired-mode-map
  (vector 'remap 'end-of-buffer) 'dired-jump-to-bottom)
;;-----------------------------------------------------------------
