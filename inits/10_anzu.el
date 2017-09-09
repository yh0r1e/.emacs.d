(when (not (package-installed-p 'anzu))
  (package-install 'anzu))

(use-package anzu
  :config
  (global-anzu-mode +1)
  (custom-set-variables
    '(anzu-mode-lighter "")
    '(anzu-deactivate-region t)
    '(anzu-search-threshold 1000)))
