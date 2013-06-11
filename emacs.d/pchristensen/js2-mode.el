;; js2-mode

;;--------JAVASCRIPT--------------------------------------------------------------------------------------------
;;http://steve-yegge.blogspot.com/2008/03/js2-mode-new-javascript-mode-for-emacs.html
;;http://code.google.com/p/js2-mode/wiki/InstallationInstructions
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(setq-default js2-basic-offset 2)
(setq js2-indent-on-enter-key)
(setq js2-bounce-indent-p t)
(setq js2-enter-indents-newline t)
(setq js2-cleanup-whitespace t)

;; Special improvements using the mooz fork
;; https://github.com/mooz/js2-mode
(setq js2-consistent-level-indent-inner-bracket-p t)
(setq js2-use-ast-for-indentation-p t)

;; Override their fancy implementation
(defun js2-before-save ()
  (when js2-cleanup-whitespace
    (delete-trailing-whitespace)))
