(:name color-theme-cmn
       :description "Colors"
       :url "https://github.com/minos001/color-theme-cmn.git"
       :type git
       :load "color-theme.el"
       :features "color-theme"
       :after (progn
                    (color-theme-initialize)
                    (setq color-theme-is-global t)
                    ;;; Pretty colors
                    (color-theme-blue-mood)
                    
                    (set-face-foreground 'region "white")
                    (set-face-background 'region "slategray")
                    
                    ;;; Cursor stuff
                    (blink-cursor-mode (- (*) (*) (*)))
                    (set-cursor-color "orange")
                    )
       )
