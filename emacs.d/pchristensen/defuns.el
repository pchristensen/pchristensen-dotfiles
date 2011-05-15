;; https://github.com/rmm5t/dotfiles/blob/master/emacs.d/rmm5t/defuns.el

;; For loading libraries from the vendor directory
;; Modified from defunkt's original version to support autoloading.
;; http://github.com/defunkt/emacs/blob/master/defunkt/defuns.el
(defun vendor (library &rest autoload-functions)
  (let* ((file (symbol-name library))
         (normal (concat "~/.emacs.d/vendor/" file))
         (suffix (concat normal ".el"))
         (personal (concat "~/.emacs.d/pchristensen/" file))
          (found nil))
    (cond
     ((file-directory-p normal) (add-to-list 'load-path normal) (set 'found t))
     ((file-directory-p suffix) (add-to-list 'load-path suffix) (set 'found t))
     ((file-exists-p suffix)  (set 'found t)))
    (when found
      (if autoload-functions
          (dolist (autoload-function autoload-functions)
            (autoload autoload-function (symbol-name library) nil t))
        (require library)))
    (when (file-exists-p (concat personal ".el"))
      (load personal))))

;; TODO Bind insert-arrow to something, sounds awesome
;; Arrows are common, especially in ruby
(defun insert-arrow ()
  (interactive)
  (delete-horizontal-space)
  (insert " => "))

;; Quickly jump back and forth between matching parens/brackets
(defun match-paren (arg)
  "Go to the matching parenthesis if on parenthesis."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))))

;; Make the whole buffer pretty and consistent
(defun iwb()
  "Indent Whole Buffer"
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))

(defun delete-window-replacement (&optional p)
  "Kill current window.  If called with PREFIX, kill the buffer too."
  (interactive "P")
  (if p
      (kill-buffer nil))
  (delete-window))

(defun delete-other-windows-replacement (&optional p)
  "Make the selected window fill its frame.  If called with PREFIX, kill all other visible buffers."
  (interactive "P")
  (if p
      (dolist (window (window-list))
        (unless (equal (window-buffer window) (current-buffer))
          (kill-buffer (window-buffer window)))))
  (delete-other-windows))

(defun lorem ()
  (interactive)
  (insert "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent libero orci, auctor sed, faucibus vestibulum, gravida vitae, arcu. Nunc posuere. Suspendisse potenti. Praesent in arcu ac nisl ultricies ultricies. Fusce eros. Sed pulvinar vehicula ante. Maecenas urna dolor, egestas vel, tristique et, porta eu, leo. Curabitur vitae sem eget arcu laoreet vulputate. Cras orci neque, faucibus et, rhoncus ac, venenatis ac, magna. Aenean eu lacus. Aliquam luctus facilisis augue. Nullam fringilla consectetuer sapien. Aenean neque augue, bibendum a, feugiat id, lobortis vel, nunc. Suspendisse in nibh quis erat condimentum pretium. Vestibulum tempor odio et leo. Sed sodales vestibulum justo. Cras convallis pellentesque augue. In eu magna. In pede turpis, feugiat pulvinar, sodales eget, bibendum consectetuer, magna. Pellentesque vitae augue."))

;; ;; Use the text around point as a cue what it is that we want from the
;; ;; editor. Allowance has to be made for the case that point is at the
;; ;; edge of a buffer.
;; (defun indent-or-expand (arg)
;;   "Either indent according to mode, or expand the word preceding
;; point."
;;   (interactive "*P")
;;   (if (and
;;        (or (bobp) (= ?w (char-syntax (char-before))))
;;        (or (eobp) (not (= ?w (char-syntax (char-after))))))
;;       (dabbrev-expand arg)
;;     (indent-according-to-mode)))

;;;------------------YEGGE UTILS----------------------------------------------------------------------------------------
;;http://sites.google.com/site/steveyegge2/my-dot-emacs-file
(defun swap-windows ()
  "If you have 2 windows, it swaps them."
  (interactive)
  (cond ((not (= (count-windows) 2))
	 (message "You need exactly 2 windows to do this."))
	(t
	 (let* ((w1 (first (window-list)))
		(w2 (second (window-list)))
		(b1 (window-buffer w1))
		(b2 (window-buffer w2))
		(s1 (window-start w1))
		(s2 (window-start w2)))
	   (set-window-buffer w1 b2)
	   (set-window-buffer w2 b1)
	   (set-window-start w1 s2)
	   (set-window-start w2 s1)))))

(defun rename-file-and-buffer (new-name)
 "Renames both current buffer and file it's visiting to NEW-NAME." (interactive "sNew name: ")
 (let ((name (buffer-name))
       (filename (buffer-file-name)))
 (if (not filename)
     (message "Buffer '%s' is not visiting a file!" name)
 (if (get-buffer new-name)
      (message "A buffer named '%s' already exists!" new-name)
   (progn  (rename-file name new-name 1)  (rename-buffer new-name)  (set-visited-file-name new-name)  (set-buffer-modified-p nil))))))

(defun move-buffer-file (dir)
 "Moves both current buffer and file it's visiting to DIR." (interactive "DNew directory: ")
 (let* ((name (buffer-name))
	 (filename (buffer-file-name))
	  (dir
	    (if (string-match dir "\\(?:/\\|\\\\)$")
		 (substring dir 0 -1) dir))
	   (newname (concat dir "/" name)))
 (if (not filename)
     (message "Buffer '%s' is not visiting a file!" name)
   (progn (copy-file filename newname 1) (delete-file filename) (set-visited-file-name newname) (set-buffer-modified-p nil) t))))

;;;------------------IDO-TAGS-----------------------------------------------------------------------------------------------------
;;http://www.masteringemacs.org/articles/2011/01/14/effective-editing-movement/ #TAGS
(require 'etags)
(defun ido-find-tag ()
  "Find a tag using ido"
  (interactive)
  (tags-completion-table)
  (let (tag-names)
    (mapc (lambda (x)
	    (unless (integerp x)
	      (push (prin1-to-string x t) tag-names)))
	  tags-completion-table)
    (find-tag (ido-completing-read "Tag: " tag-names))))

(defun ido-find-file-in-tag-files ()
  (interactive)
  (save-excursion
    (let ((enable-recursive-minibuffers t))
      (visit-tags-table-buffer))
    (find-file
     (expand-file-name
      (ido-completing-read
       "Project file: " (tags-table-files) nil t)))))

;; ;; TODO Figure out if ido-tag will work and map keys
;; (global-set-key [remap find-tag] 'ido-find-tag)
;; (global-set-key (kbd "C-.") 'ido-find-file-in-tag-files)

;;----------POINT AND MARK BEHAVIOR--------------------------------------------------------------------
;; TODO Move bindings for point and mark functions to bindings file
;;http://www.masteringemacs.org/articles/2010/12/22/fixing-mark-commands-transient-mark-mode/
(defun push-mark-no-activate ()
  "Pushes `point' to `mark-ring' and does not activate the region
Equivalent to \\[set-mark-command] when \\[transient-mark-mode] is disabled"
  (interactive)
  (push-mark (point) t nil)
  (message "Pushed mark to ring"))
(global-set-key (kbd "C-`") 'push-mark-no-activate)

(defun jump-to-mark ()
  "Jumps to the local mark, respecting the `mark-ring' order.
This is the same as using \\[set-mark-command] with the prefix argument."
  (interactive)
  (set-mark-command 1))
(global-set-key (kbd "M-`") 'jump-to-mark)

(defun exchange-point-and-mark-no-activate ()
  "Identical to \\[exchange-point-and-mark] but will not activate the region."
  (interactive)
  (exchange-point-and-mark)
  (deactivate-mark nil))
(define-key global-map [remap exchange-point-and-mark] 'exchange-point-and-mark-no-activate)

