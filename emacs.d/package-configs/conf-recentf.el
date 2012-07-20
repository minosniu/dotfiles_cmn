;;; Recent Files

(require 'recentf)
(recentf-mode t)
(setq recentf-max-menu-items 25)

;; Smartly find recently opened files
(defun ido-recentf-open ()
  "Use `ido-completing-read' to \\[find-file] a recent file"
  (interactive)
  (if (find-file (ido-completing-read "Find recent file: " recentf-list))
      (message "Opening file...")
    (message "Aborting")))

;; get rid of `find-file-read-only' and replace it with something
;; more useful.
(global-unset-key (kbd "C-x C-r"))
(global-set-key (kbd "C-x C-r") 'ido-recentf-open)
