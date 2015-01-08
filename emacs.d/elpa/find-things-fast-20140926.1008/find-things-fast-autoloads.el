;;; find-things-fast-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (ftf-gdb ftf-compile ftf-find-file ftf-grepsource
;;;;;;  ftf-add-filetypes) "find-things-fast" "find-things-fast.el"
;;;;;;  (21678 61448 0 0))
;;; Generated autoloads from find-things-fast.el

(defvar ftf-filetypes '("*.h" "*.hpp" "*.cpp" "*.c" "*.cc" "*.cpp" "*.inl" "*.grd" "*.idl" "*.m" "*.mm" "*.py" "*.sh" "*.cfg" "*SConscript" "SConscript*" "*.scons" "*.vcproj" "*.vsprops" "*.make" "*.gyp" "*.gypi") "\
A list of filetype patterns that grepsource will use. Obviously biased for
chrome development.")

(autoload 'ftf-add-filetypes "find-things-fast" "\
Makes `ftf-filetypes' local to this buffer and adds the
elements of list types to the list

\(fn TYPES)" nil nil)

(autoload 'ftf-grepsource "find-things-fast" "\
Greps the current project, leveraging local repository data
for speed and falling back on a big \"find | xargs grep\"
command if we aren't.

The project's scope is defined first as a directory containing
either a `.dir-locals.el' file or an `.emacs-project' file OR the
root of the current git or mercurial repository OR a project root
defined by the optional `project-root.el' package OR the default
directory if none of the above is found.

\(fn CMD-ARGS)" t nil)

(autoload 'ftf-find-file "find-things-fast" "\
Prompt with a completing list of all files in the project to find one.

The project's scope is defined first as a directory containing
either a `.dir-locals.el' file or an `.emacs-project' file OR the
root of the current git or mercurial repository OR a project root
defined by the optional `project-root.el' package OR the default
directory if none of the above is found.

\(fn)" t nil)

(autoload 'ftf-compile "find-things-fast" "\
Run the `compile' function from the project root.

\(fn)" t nil)

(autoload 'ftf-gdb "find-things-fast" "\
Run the `gdb' function from the project root.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("find-things-fast-pkg.el") (21678 61448
;;;;;;  163340 0))

;;;***

(provide 'find-things-fast-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; find-things-fast-autoloads.el ends here
