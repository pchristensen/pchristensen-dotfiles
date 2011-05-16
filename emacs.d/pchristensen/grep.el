;; ;; TODO Figure out how to use grep within emacs
;; ;; https://github.com/rmm5t/dotfiles/blob/master/emacs.d/rmm5t/grep.el

;;; Grep is wicked

;; Grep/Find.  This needs some cleanup
(setq grep-command "grep -Irine ")
(setq grep-find-command
      (format "%s . -type f \\( -name '*~' -o -name '*#' -o -name '*.log' -o -path '*CVS/*' -o -path '*.svn/*' -o -path '*.git/*' -o -path '*vendor/*' -o -path '*build/*' -prune -o -print0 \\) | xargs -0 %s"
              find-program grep-command))
