;;; It's Magit! An Emacs mode for Git.

(add-hook
 'magit-mode-hook
 (lambda ()
   (setq yas/dont-activate t)))

(eval-after-load 'magit
  '(progn
     (set-face-foreground 'magit-diff-add "green3")
     (set-face-foreground 'magit-diff-del "red3")
     (set-face-background 'magit-item-highlight "gray15")
     (global-set-key (kbd "C-x g") 'magit-status)
     (defun magit-pull ()
       (interactive)
       (magit-run-git-async "pull" "--rebase" "-v"))))
