;;---------ERLANG------------------------------------------------------------------------------------------------
(setq load-path (cons  "/usr/local/lib/erlang/lib/tools-2.6.6.2/emacs/"
      load-path))
(setq erlang-root-dir "/usr/local/lib/erlang")
(setq exec-path (cons "/usr/local/lib/erlang/bin" exec-path))
;(autoload 'erlang-start)
;; TODO Not sure what to do about erlang autoload, since systems might not have this installed
;; installation here: http://www.erlang.org/download.html