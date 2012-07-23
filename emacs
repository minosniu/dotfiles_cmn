;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Package Management
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d")
(require 'defuns)

;; Enable a backtrace when problems occur
(setq debug-on-error t)

(load "init-env")
(try-error (load "load-vendor-packages") (error "Failed loading vendor-packages"))
(try-error (load "load-cmn-packages") (error "Failed loading cmn-packages"))
(try-error (load "post-config") (error "Failed configuring packages"))


 

