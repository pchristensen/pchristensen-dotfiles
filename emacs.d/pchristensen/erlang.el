;;---------ERLANG------------------------------------------------------------------------------------------------
(setq load-path (cons  "/usr/local/lib/erlang/lib/tools-2.6.6.2/emacs/"
      load-path))
(setq erlang-root-dir "/usr/local/lib/erlang")
(setq exec-path (cons "/usr/local/lib/erlang/bin" exec-path))
(autload 'erlang-start)
