;; (require 'package)
;; (require 'cl)
;; 
;; (add-to-list 'package-archives
;;              '("marmalade" . "http://marmalade-repo.org/packages/") t)
;; 
;; (defvar prelude-packages
;;   '(ack-and-a-half python)
;;   "A list of packages to ensure are installed at launch.")
;; 
;; (defun prelude-packages-installed-p ()
;;   (loop for p in prelude-packages
;;         when (not (package-installed-p p)) do (return nil)
;;         finally (return t)))
;; 
;; (unless (prelude-packages-installed-p)
;;   ;; check for new packages (package versions)
;;   (message "%s" "Emacs Prelude is now refreshing its package database...")
;;   (package-refresh-contents)
;;   (message "%s" " done.")
;;   ;; install the missing packages
;;   (dolist (p prelude-packages)
;;     (when (not (package-installed-p p))
;;       (package-install p))))
;; 
;; (provide 'prelude-packages)
;; 
;; (unless (prelude-packages-installed-p)
;;   ;; check for new packages (package versions)
;;   (message "%s" "Emacs Prelude is now refreshing its package database...")
;;   (package-refresh-contents)
;;   (message "%s" " done.")
;;   ;; install the missing packages
;;   (dolist (p prelude-packages)
;;     (when (not (package-installed-p p))
;;       (package-install p))))
;; 
;; (provide 'prelude-packages)
;; (package-initialize)

; derived from ELPA installation
; http://tromey.com/elpa/install.html
(defun eval-url (url)
  (let ((buffer (url-retrieve-synchronously url)))
  (save-excursion
    (set-buffer buffer)
    (goto-char (point-min))
    (re-search-forward "^$" nil 'move)
    (eval-region (point) (point-max))
    (kill-buffer (current-buffer)))))

;; Load ELPA
(add-to-list 'load-path "~/.emacs.d/elpa")

(defun install-elpa ()
  (eval-url "http://tromey.com/elpa/package-install.el"))

(if (require 'package nil t)
    (progn
      ;; Emacs 24+ includes ELPA, but requires some extra setup
      ;; to use the (better) tromey repo
      (if (>= emacs-major-version 24)
          (setq package-archives
                (cons '("tromey" . "http://tromey.com/elpa/")
                package-archives)))
      (package-initialize))
  (install-elpa))

;; Load el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(defun install-el-get ()
  (eval-url
   "https://github.com/dimitri/el-get/raw/master/el-get-install.el"))

(unless (require 'el-get nil t)
  (install-el-get))
