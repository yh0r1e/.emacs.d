(use-package mozc
  :ensure t
  :config
  (setq default-input-method "japanese-mozc")
  (setq mozc-candidate-style 'echo-area)
  (global-set-key (kbd "S-SPC") 'toggle-input-method)
  (define-key mozc-mode-map (kbd "S-SPC") 'toggle-input-method)
  (add-hook 'input-method-activate-hook (lambda () (set-face-background 'cursor "#3a3")))
  (add-hook 'input-method-inactivate-hook (lambda () (set-face-background 'cursor "#666"))))
