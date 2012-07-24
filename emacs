;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Package Management
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d")
(require 'defuns)

;; Enable a backtrace when problems occur
;; (setq debug-on-error t)

(load "init-env")
(try-error (load "load-vendor-packages") (message "Done loading vendor packages!"))
;; (try-error (load "load-cmn-packages") (message "Done loading personal packages!"))
;; (try-error (load "post-config") (message "Configured all packages!"))


 

