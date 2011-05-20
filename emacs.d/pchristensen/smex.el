;; ;; https://github.com/nonsequitur/smex/
;; ;; Smex is a M-x enhancement for Emacs. Built on top of Ido, it provides a convenient interface to your recently and most frequently used commands. And to all the other commands, too.

(smex-initialize)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-x C-m") 'smex-major-mode-commands)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

(global-set-key (kbd "C-c C-x x") 'execute-extended-command)
