
;; Package sources
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/"))

(package-initialize)

;; Ensure these packages are installed------------------------------------------------------------------
;; ref: http://batsov.com/articles/2012/02/19/package-management-in-emacs-the-good-the-bad-and-the-ugly/
(defvar pchristensen-packages ()
  "A list of packages to ensure are installed at launch.")

(defun set-pchristensen-packages ()
  (setq pchristensen-packages '(autopair
                                clojure-mode
                                clojurescript-mode
                                coffee-mode
                                color-theme
                                color-theme-sanityinc-tomorrow
                                find-things-fast
                                haml-mode
                                js2-mode
                                magit
                                melpa
                                nrepl
                                nrepl-eval-sexp-fu
                                nrepl-ritz
                                paredit
                                rainbow-delimiters
                                rainbow-mode
                                sass-mode
                                slime
                                yaml-mode
                                zen-and-art-theme
                                zenburn-theme)))


(defun pchristensen-packages-installed-p ()
  (loop for p in pchristensen-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (pchristensen-packages-installed-p)
  ;; check for new packages (package versions)
  (message "%s" "Emacs is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; install the missing packages
  (dolist (p pchristensen-packages)
    (when (not (package-installed-p p))
      (package-install p))))

(provide 'pchristensen-packages)
;;------------------------------------------------------------------------------------------------------
