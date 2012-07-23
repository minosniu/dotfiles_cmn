(add-to-list 'load-path "~/.emacs.d/package-configs")
(require 'defuns)

;; conf-* = Package Configurations
;; (load "config/shell-mode")
;; Combine el-get-sources and my:el-get-packages
(setq my:el-get-packages
      (append
       my:el-get-packages
       (loop for src in el-get-sources collect (el-get-source-name src))))

(el-get 'sync my:el-get-packages)
