
;;; ack > grep

(setq ack-prompt-for-directory 'always)
(setq ack-prompt-for-directory 'unless-guessed)

(defun ack-default-directory (pattern &optional regexp directory)
  (interactive (ack-interactive))
  (ack pattern regexp default-directory))

(defun ack-groupon (pattern &optional regexp directory)
  (interactive (ack-interactive))
  (ack pattern regexp "~/Projects/web/"))

;; On Ubuntu
;(setq ack-executable (executable-find "ack-grep"))