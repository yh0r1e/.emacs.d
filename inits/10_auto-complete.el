(when (not (package-installed-p 'auto-complete))
  (package-install 'auto-complete))


(use-package auto-complete
  :config
  (add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-20150618.1949/dict")
  (ac-config-default)
  (setq ac-use-fuzzy t)
  (global-auto-complete-mode t)
  (add-hook 'web-mode-hook 'auto-complete-mode)
  (define-key ac-mode-map (kbd "<tab>") 'ac-start)
  (define-key ac-completing-map (kbd "<tab>") 'auto-complete)
  (define-key ac-completing-map (kbd "C-n") 'ac-next)
  (define-key ac-completing-map (kbd "C-p") 'ac-previous)
  (setq ac-auto-show-menu 0)

  ;;; Add ac-sources
  (defun ac-web-mode-setup ()
    (add-to-list 'ac-sources 'ac-source-yasnippet)
    (add-to-list 'ac-sources 'ac-source-filename))
  (add-hook 'web-mode-hook 'ac-web-mode-setup)

  (defun ac-css-mode-setup ()
    (add-to-list 'ac-sources 'ac-source-yasnippet)
    (add-to-list 'ac-sources 'ac-source-filename))
  (add-hook 'css-mode-hook 'ac-css-mode-setup)

  (defun ac-js2-mode-setup ()
    (add-to-list 'ac-sources 'ac-source-yasnippet)
    (add-to-list 'ac-sources 'ac-source-filename))
  (add-hook 'js2-mode-hook 'ac-js2-mode-setup)
  )
