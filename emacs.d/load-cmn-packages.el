;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; El-get packages using personal recipes
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(load "defuns")

;; Append to el-get-sources (global)
;; Configuration files follow the same format as el-get recipes
(load-n-config 'el-get-buffer-move)
(load-n-config 'el-get-smex)
(load-n-config 'el-get-goto-last-change)

;; Combine el-get-sources and my:el-get-packages
(setq my:el-get-packages
      (append
       my:el-get-packages
       (loop for src in el-get-sources collect (el-get-source-name src))))

(el-get 'sync my:el-get-packages)