(use-package emmet-mode
  :ensure t
  :config
  (add-hook 'web-mode-hook 'emmet-mode)
  (setq emmet-move-cursor-between-quotes t))
