;; Configure Tabbar Mode
(require 'tabbar)
(tabbar-mode)
(global-set-key (kbd "<C-S-tab>") 'tabbar-backward)
(global-set-key (kbd "<C-tab>") 'tabbar-forward)
(global-set-key (kbd "<C-S-up>") 'tabbar-backward-group)
(global-set-key (kbd "<C-S-down>") 'tabbar-forward-group)
;; (require 'tabbar-extension)
