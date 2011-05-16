;;-----------CURRENT PROJECT SETTINGS-----------------------------------------
(defvar geekstack-root (concat emacs-root "src/geekstack/gitengine/"))

(defun geekstack-reset ()
  (interactive)
  (delete-other-windows)
  (find-file (concat geekstack-root "game-engine.lisp"))
  (split-window-horizontally)
  (other-window 0)
  (split-window-vertically)
  (slime)
  (other-window 0)
  (find-file (concat geekstack-root "web-wrapper.lisp"))
  (other-window 0))

