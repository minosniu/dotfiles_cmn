(defun server-save-edit ()
  (interactive)
  (save-buffer)
  (server-edit))

(add-hook 'server-visit-hook
          (lambda ()
            (local-set-key [(control c) (control c)] 'server-save-edit)
            ))

;; (add-hook 'server-visit-hook 'call-raise-frame)
;; (defun call-raise-frame ()
;;   (raise-frame))
