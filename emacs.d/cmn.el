(add-to-list 'load-path "~/.emacs.d/vendor")

(setq custom-file "~/.emacs.d/cmn/custom.el")
(load custom-file 'noerror)

(load "cmn/env")
(load "cmn/global")
(load "cmn/defuns") ;; Func used for customizations
(load "cmn/bindings")
(load "cmn/tabs")
(load "cmn/disabled")
(load "cmn/fonts")
(load "cmn/utf-8")
(load "cmn/scratch")
(load "cmn/grep")
(load "cmn/diff")
(load "cmn/ido")
(load "cmn/dired")
(load "cmn/recentf")
(load "cmn/rectangle")
(load "cmn/org")
(load "cmn/zoom")
(load "cmn/flymake")
(load "cmn/javascript")
(load "cmn/ri-emacs")
(load "cmn/mac")
(load "cmn/server-mode")
(load "cmn/shell-mode")
(load "cmn/private" 'noerror)

;; (load "cmn/hl-line")
;; (load "cmn/iswitchb")


(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)

(defvar prelude-packages
  '(ack-and-a-half auctex coffee-mode gist haskell-mode inf-ruby
                   magit magithub markdown-mode paredit python
                   solarized-theme )
  "A list of packages to ensure are installed at launch.")

(defun prelude-packages-installed-p ()
  (loop for p in prelude-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (prelude-packages-installed-p)
  ;; check for new packages (package versions)
  (message "%s" "Emacs Prelude is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; install the missing packages
  (dolist (p prelude-packages)
    (when (not (package-installed-p p))
      (package-install p))))

(provide 'prelude-packages)
(package-initialize)
;;; prelude-packages.el ends here

(vendor 'vimpulse)
