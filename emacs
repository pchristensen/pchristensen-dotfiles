;;TODO
;;TODO elpa
;;TODO nxhtml http://www.emacswiki.org/emacs/NxhtmlMode
;;TODO Selective browsing by regex: http://bc.tech.coop/blog/070208.html
;;TODO Bill Clementson Library Documentation - http://bc.tech.coop/blog/070129.html
;;   Also do for rails docs
;;TODO Electric keys??
;;TODO Notes from cool screencast: http://platypope.org/blog/2006/9/8/i-need-a-cool-european-accent
;;TODO Ruby Setup
  ;;; need inf-ruby
;;TODO Rails Setup
;;TODO Info directory setup
;;  TODO Setup info for ecb http://ecb.sourceforge.net/docs/Standard-ECB_002dInstallation.html#Standard-ECB_002dInstallation
;;  TODO Gather Info files
;;TODO Emacs-git http://news.ycombinator.com/item?id=1675547

;;TODO http://steve.yegge.googlepages.com/saving-time
;;TODO http://a-nickels-worth.blogspot.com/2007/11/effective-emacs.html
;;TODO http://emacsblog.org/2007/10/07/declaring-emacs-bankruptcy/
;;TODO http://www.emacswiki.org/emacs/PhpMode
;;TODO http://news.ycombinator.com/item?id=1654164
;;TODO Get library recommendations from http://sites.google.com/site/steveyegge2/my-dot-emacs-file
;;TODO Tyler's .emacs http://github.com/tylergreen/.emacs.d/blob/master/init.el

;;;;SETUP
;;----nXHTML-------------
; M-x nxhtmlmaint-start-byte-compilation

;;----EMACS-W3M-----------
;---------------
;;;;; http://bc.tech.coop/blog/080110.html
; sudo apt-get install pkg-config gettext gawk nkf autoconf
; wget http://www.hpl.hp.com/personal/Hans_Boehm/gc/gc_source/gc-7.1.tar.gz
;   -OR-
; cp emacs/bin/gc-7.1.tar.gz ~/
; tar -xvf gc-7.1.tar.gz
; cd gc-7.1
; ./configure
; make
; make check
; sudo make install
; cd ~/
; rm -rf gc-7.1*
;
; wget http://downloads.sourceforge.net/project/w3m/w3m/w3m-0.5.2/w3m-0.5.2.tar.gz
;   -OR-
; cp emacs/bin/w3m-0.5.2.tar.gz
; tar -xvf w3m-0.5.2.tar.gz
; cd w3m-0.5.2
; ./configure
; make
; sudo make install
; cd ~/
; rm -rf w3m-0.5.2
;
; cd ~/emacs/site-lisp/emacs-w3m/
; autoconf
; ./configure
; make
; sudo make install



(require 'cl)

; from http://steve.yegge.googlepages.com/my-dot-emacs-file
(defvar emacs-root (cond ((or (eq system-type 'gnu/linux) (eq system-type 'cyqwin) (eq system-type 'linux)) "/home/peter/")
			 ((eq system-type 'darwin) "/Users/peterchristensen/")
			 (t "C:/Users/Peter/Documents/nix/")))

;;TODO Questionable definitions
;(defvar elisp-root "src/elisp/")
;(add-to-list 'load-path (concat emacs-root "src/lisp/"))
;(add-to-list 'load-path (concat emacs-root "src/elisp/"))

(labels ((add-path (p)
		   (add-to-list 'load-path (concat emacs-root p))))
  (add-path "emacs/lisp") ;; all my personal elisp code
  (add-path "emacs/site-lisp") ;; elisp stuff I find on the internet
  (add-path "emacs/lisp/cnu") ;; Specific to CashNetUSA setup
)

(load-library "display-prefs")  ;; Make the windows look the way I want
(load-library "behavior") ;; One-offs and configs to make emacs act the way I want
(load-library "utils") ;; Helpful functions and snippets I've collected
(load-library "modes") ;; Setup and customization for different modes

;;--------PROJECT----------------------------------------------------------------------------
(load-library "groupon") ;; Stuff specific to Groupon
(load-library "geekstack") ;; Stuff specific to GeekStack work

(load-library "custom") ;;layout customizations

# Local Variables:
# mode: emacs-lisp
# End:

