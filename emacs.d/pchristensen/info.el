;;----------INFO setup---------------------------------------------------------------------------------
;;http://www.emacswiki.org/cgi-bin/wiki/InfoPath
;http://www.gnu.org/software/hello/manual/texinfo/Other-Info-Directories.html#Other-Info-Directories
(require 'info)
(setq Info-directory-list
      (cons (expand-file-name (concat root ".info/"))
	    Info-default-directory-list))

