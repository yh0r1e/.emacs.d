(when (not (package-installed-p 'direx))
  (package-install 'direx))

(use-package direx
  :config
  (push '(direx:direx-mode :position left :width 50 :dedicated t)
    popwin:special-display-config)
  (global-set-key (kbd "C-x C-j") 'direx:jump-to-directory-other-window))
