(defun file-string (file)
    "Read the contents of a file and return as a string."
    (with-temp-buffer
      (insert-file-contents file)
      (read (current-buffer))))

(defun load-n-config (library &rest autoload-functions)
  (let* ((file (symbol-name library))
         (normal (concat "~/.emacs.d/config/" file))
         (suffix (concat normal ".el"))
	 (found nil))
    (cond
     ((file-directory-p normal) (add-to-list 'load-path normal) (set 'found t))
     ((file-directory-p suffix) (add-to-list 'load-path suffix) (set 'found t))
     ((file-exists-p suffix)  (set 'found t)))
    (when found
      (add-to-list 'el-get-sources (file-string suffix)))
    )) 

