(require 'flycheck)
(require 'flycheck-tip)

(flycheck-mode 1)

(eval-after-load 'flycheck
  '(progn
     (set-face-attribute 'flycheck-error nil :foreground "red")
     (set-face-attribute 'flycheck-warning nil :foreground "yellow")
     (set-face-attribute 'flycheck-info nil :foreground "blue")
     (setq flycheck-highlighting-mode 'lines)
     (setq flycheck-check-syntax-automatically '(mode-enabled save))
     (flycheck-tip-use-timer 'verbose)))

(add-hook 'after-init-hook 'global-flycheck-mode)


(provide 'init-flycheck)
