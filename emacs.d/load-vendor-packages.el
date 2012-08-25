;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Author: C. Minos Niu <minos.niu@gmail.com>
;; Created: 2012-07-19
;; Description: El-get packages using provided recipes
;; Licence: MIT
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(require 'cl)				; common lisp goodies, loop
(require 'defuns)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Install el-get if non-exist
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(unless (require 'el-get nil t)
  ;; So the idea is that you copy/paste this code into your *scratch* buffer,
  ;; hit C-j, and you have a working developper edition of el-get.
  (url-retrieve
   "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
   (lambda (s)
     (let (el-get-master-branch)
       (goto-char (point-max))
     (eval-print-last-sexp)))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; No config packages, only for fetching & enabling
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq
 my:el-get-packages
 '(el-get				; el-get is self-hosting
   zencoding-mode			; http://www.emacswiki.org/emacs/ZenCoding
   haskell-mode
   rope
   ropemacs
   pymacs
   pycomplete+
   ;; color-theme		                ; nice looking emacs
   ))	                ; check out color-theme-solarized

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Packages with personal configurations
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load-n-config 'conf-smex)
(load-n-config 'conf-yasnippet)
(load-n-config 'conf-auto-complete)
(load-n-config 'conf-evil)
(load-n-config 'conf-goto-last-change)
;;(load-n-config 'conf-python-mode)
(load-n-config 'conf-buffer-move)
(load-n-config 'conf-tabbar)
(load-n-config 'conf-color-theme-cmn) ;; Hosted by myself, el-get recipe failed
(load-n-config 'conf-maxframe) ;; Hosted by myself, el-get recipe failed

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Call el-get to execute the installations
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq my:el-get-packages
      (append
       my:el-get-packages
       (loop for src in el-get-sources collect (el-get-source-name src))))

(el-get 'sync my:el-get-packages)

