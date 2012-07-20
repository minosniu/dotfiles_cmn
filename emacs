;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Package Management
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d")

;; Enable a backtrace when problems occur
;; (setq debug-on-error t)

(load "init-env")
(load "load-vendor-packages")
(load "load-cmn-packages")
(load "post-config")


 

