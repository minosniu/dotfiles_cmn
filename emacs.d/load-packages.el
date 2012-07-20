;; Author: C. Minos Niu <minos.niu@gmail.com>
;; Created: 2012-07-19
;; Keywords: emacs setup el-get kick-start starter-kit
;; Licence: MIT
;;
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(require 'cl)				; common lisp goodies, loop

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
;; Packages to be fetched
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq
 my:el-get-packages
 '(el-get				; el-get is self-hosting
   yasnippet
   goto-last-change
   python-mode
   evil
   elscreen
   zencoding-mode			; http://www.emacswiki.org/emacs/ZenCoding
   color-theme		                ; nice looking emacs
   ))	                ; check out color-theme-solarized

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Install & partially initialize the el-get maintained packages
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(el-get 'sync my:el-get-packages)

