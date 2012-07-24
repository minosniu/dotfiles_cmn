;;; Enable python-mode
(:name python-mode				; complete the bar
       :after (progn
           (setq auto-mode-alist (cons '("\\.py$" . python-mode) auto-mode-alist))
           (autoload 'python-mode "python-mode" "Python editing mode." t)
           (setq interpreter-mode-alist(cons '("python" . python-mode)
                                        interpreter-mode-alist))
           
           ;; Initialize Pymacs
           (autoload 'pymacs-apply "pymacs")
           (autoload 'pymacs-call "pymacs")
           (autoload 'pymacs-eval "pymacs" nil t)
           (autoload 'pymacs-exec "pymacs" nil t)
           (autoload 'pymacs-load "pymacs" nil t)
           
           
           ;; Initialize Rope - the Python refactoring tool
           (pymacs-load "ropemacs" "rope-")
           (setq ropemacs-enable-autoimport t)

))
