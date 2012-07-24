;;; org-mode

(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

;; (setq org-agenda-files (list "~/org/home.org"
;;                              "~/org/inbox.org"
;;                              "~/org/emacsbook.org"))

(setq org-agenda-files (list "~/org/book/home.org"
                             "~/org/book/work.org"
                             "~/org/book/emacsbook.org"))

;; (global-set-key (kbd "C-c r") 'remember)
;; (add-hook 'remember-mode-hook 'org-remember-apply-template)
;; (setq org-remember-templates
;;       '((?n "* %U %?" "~/org/inbox.org")))
;; (setq remember-annotation-functions '(org-remember-annotation))
;; (setq remember-handler-functions '(org-remember-handler))
(setq org-hide-leading-stars t)
(setq-default ispell-program-name "aspell")
(setq-default ispell-local-dictionary "american")
(global-set-key (kbd "") 'ispell-complete-word)

;; Adding spell check for org-mode
(add-hook 'org-mode-hook
          (lambda ()
            ;; yasnippet
            (make-variable-buffer-local 'yas/trigger-key)
            (setq yas/trigger-key [tab])
            (define-key yas/keymap [tab] 'yas/next-field-group)
            ;; flyspell mode to spell check everywhere
            (flyspell-mode 1)))


