;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Package Management
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d")

;; Enable a backtrace when problems occur
;; (setq debug-on-error t)

(load "set-env")
(load "load-vendor-packages")
(load "load-cmn-packages")
(load "config-packages")


 

