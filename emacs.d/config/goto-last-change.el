(:name goto-last-change		; move pointer back to last change
       :after (progn
           ;; when using AZERTY keyboard, consider C-x C-_
           (global-set-key (kbd "C-x C-/") 'goto-last-change)))


