(:name buffer-move			; have to add your own keys
       :after (progn
     	   (global-set-key (kbd "<C-S-up>")     'buf-move-up)
     	   (global-set-key (kbd "<C-S-down>")   'buf-move-down)
     	   (global-set-key (kbd "<C-S-left>")   'buf-move-left)
     	   (global-set-key (kbd "<C-S-right>")  'buf-move-right)))


