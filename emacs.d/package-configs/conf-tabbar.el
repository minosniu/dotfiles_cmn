;; Configure Tabbar Mode
(:name tabbar				; Display tabs in Emacs
       :post-init (progn
           (require 'tabbar)
           (tabbar-mode t)
           (global-set-key (kbd "<C-S-tab>") 'tabbar-backward)
           (global-set-key (kbd "<C-tab>") 'tabbar-forward)
           (global-set-key (kbd "<C-S-up>") 'tabbar-backward-group)
           (global-set-key (kbd "<C-S-down>") 'tabbar-forward-group)
;; (require 'tabbar-extension)
))
