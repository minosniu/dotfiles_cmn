;;; Cocoa!
;;;
;; have Command as Meta and keep Option for localized input
(when (string-match "apple-darwin" system-configuration)
  ;; Hide the tool bar
  (when (fboundp 'tool-bar-mode)
    (tool-bar-mode 0))
  ;; Slow down the mouse wheel acceleration
  (when (boundp 'mouse-wheel-scroll-amount)
    (setq mouse-wheel-scroll-amount '(0.01)))
  (setq mac-allow-anti-aliasing t)
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier 'none))



