(require 'smartparens-config)

;; disable electric-pair-mode
(electric-pair-mode -1)

(sp-pair "{" nil :post-handlers '(("||\n[i]" "RET")))
(smartparens-global-mode 1)


(provide 'init-smartparens)
