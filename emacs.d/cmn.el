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
(package-initialize)


(vendor 'vimpulse)
