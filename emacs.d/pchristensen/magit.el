;;; It's Magit! An Emacs mode for Git.

(add-hook
 'magit-mode-hook
 (lambda ()
   (setq yas/dont-activate t)))

(eval-after-load 'magit
  '(progn
     (set-face-background 'magit-diff-add "color-234")
     (set-face-background 'magit-diff-del "color-234")
     (set-face-background 'magit-diff-none "color-234")
     (set-face-background 'magit-diff-file-header "color-234")
     (set-face-background 'magit-diff-hunk-header "color-234")
     (global-set-key (kbd "C-x g") 'magit-status)
     (defun magit-pull ()
       (interactive)
       (magit-run-git-async "pull" "--rebase" "-v"))))

;; http://whattheemacsd.com/setup-magit.el-01.html-----------------
(defadvice magit-status (around magit-fullscreen activate)
  (window-configuration-to-register :magit-fullscreen)
  ad-do-it
  (delete-other-windows))

(defun magit-quit-session ()
  "Restores the previous window configuration and kills the magit buffer"
  (interactive)
  (kill-buffer)
  (jump-to-register :magit-fullscreen))

(define-key magit-status-mode-map (kbd "q") 'magit-quit-session)
;;-----------------------------------------------------------------
