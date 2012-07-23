(:name maxframe
       :website "https://github.com/rmm5t/maxframe.el"
       :description "Maximize the frame for fullscreen effect"
       :type github
       :branch "master"
       :pkgname "rmm5t/maxframe.el"
       :features maxframe
       :load    "maxframe.el"
       :post-init (progn
           (require 'maxframe)
           ;; Biggest monitor width I currently have.  This is necessary when multiple
           ;; monitors exist; otherwise, the frame will span multiple displays.
           (setq mf-max-width 1920)
           ;; Maximize on startup
           (add-hook 'window-setup-hook 'maximize-frame t)
           
           ;; Key bindings
           (global-set-key [(meta return)] 'mf)
))

