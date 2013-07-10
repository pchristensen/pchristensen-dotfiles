;;; find-things-fast
;;; https://github.com/eglaysher/find-things-fast
;; Make ftf the default find file, but map ido-find-file as a backup
(global-set-key "\C-x\C-f" 'ftf-find-file)
(global-set-key "\C-c\C-f" 'ido-find-file)

;;;; TODO Temporarily using ag (silver searcher) instead
;; (global-set-key "\C-c\C-g" 'ftf-grepsource)


;;;; TODO Customize by mode for specific file types, e.g.:
;; (add-hook 'emacs-lisp-mode-hook
;;           (lambda (ftf-add-filetypes '("*.el" "*.elisp"))))
