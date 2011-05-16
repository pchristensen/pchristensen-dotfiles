
;;; ack > grep

(defun ack-default-directory (pattern &optional regexp directory)
  (interactive (ack-interactive))
  (ack pattern regexp default-directory))

;; TODO ack - find a way to specify a default directory at the prompt
;; notes for ack-prompt-for-directory might be useful
(defun ack-groupon (pattern &optional regexp directory)
  (interactive (ack-interactive))
  (ack pattern regexp "~/Projects/web/"))