;;; Snippets make typing fun
(:name yasnippet				; Code templates
       :after (progn
           (require 'dropdown-list)
           (yas/global-mode 1)
           (yas/load-directory "~/.emacs.d/el-get/yasnippet/snippets")
           ;; (yas/load-directory "~/.emacs.d/el-get/yasnippets-rails/rails-snippets")
           ;; (yas/load-directory "~/.emacs.d/el-get/yasnippets-shoulda")
           
           (setq yas/prompt-functions '(yas/ido-prompt
                                        yas/dropdown-prompt
                                        yas/completing-prompt))
           
           ;; Replace yasnippets's TAB
           (add-hook 'yas/minor-mode-hook
                     (lambda () (define-key yas/minor-mode-map
                                  (kbd "TAB") 'smart-tab))) ; was yas/expand
))
