;; auto-complete stuff
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/cmn/dict")
(ac-config-default)
(global-auto-complete-mode t)
(setq-default ac-sources '(ac-source-words-in-same-mode-buffers))
(add-hook 'emacs-lisp-mode-hook (lambda () (add-to-list 'ac-sources 'ac-source-symbols)))
(add-hook 'auto-complete-mode-hook (lambda () (add-to-list 'ac-sources 'ac-source-filename)))
(set-face-background 'ac-candidate-face "lightgray")
(set-face-underline 'ac-candidate-face "darkgray")
(set-face-background 'ac-selection-face "steelblue") ;;; better background color
(define-key ac-completing-map "\M-n" 'ac-next)  ;;; M-n for moving down the candidate list
(define-key ac-completing-map "\M-p" 'ac-previous)
(setq ac-auto-start 2)
(setq ac-dwim t)
(define-key ac-mode-map (kbd "C-x TAB") 'auto-complete)
