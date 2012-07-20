;;; Evil for Vim simulation
(require 'evil)
(evil-mode 1)

(load "elscreen" "ElScreen" t)

(define-key evil-normal-state-map (kbd "C-w t") 'elscreen-create) ;creat tab
(define-key evil-normal-state-map (kbd "C-w x") 'elscreen-kill) ;kill tab

(define-key evil-normal-state-map "gT" 'elscreen-previous) ;previous tab
(define-key evil-normal-state-map "gt" 'elscreen-next) ;next tab

(define-key evil-normal-state-map "j" "gj") ;j = down a wrapped line
(define-key evil-normal-state-map "k" "gk") ;k = up a wrapped line

(defun evil-passthrough ()
      "Accept a key, switch to emacs state, process that key, and leave emacs state."
      (interactive)
      (let ((next-key (read-event)))
        (progn
          (evil-emacs-state)
          (setq unread-command-events (list next-key))
          (run-with-idle-timer 1 nil (lambda () (evil-exit-emacs-state))))))

(global-set-key (kbd "M-p") 'evil-passthrough)

