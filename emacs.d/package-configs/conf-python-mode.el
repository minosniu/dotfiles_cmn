;;; Enable python-mode
(setq auto-mode-alist (cons '("\\.py$" . python-mode) auto-mode-alist))
(autoload 'python-mode "python-mode" "Python editing mode." t)
(setq interpreter-mode-alist(cons '("python" . python-mode)
                             interpreter-mode-alist))

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


;; Initialize Pymacs
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)


;; Initialize Rope - the Python refactoring tool
(pymacs-load "ropemacs" "rope-")
(setq ropemacs-enable-autoimport t)

