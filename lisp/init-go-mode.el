(require 'company-go)

(defun go-mode-setup ()
  (setq compile-command "go build -v && go test -v && go vet")
  (define-key (current-local-map) "\C-c\C-c" 'compile)
  (setq gofmt-command "goimports")
  (add-hook 'before-save-hook 'gofmt-before-save)
  (local-set-key (kbd "M-.") 'godef-jump)
  (go-eldoc-setup))

(defun go-company-setup ()
  (set (make-local-variable 'company-backends) '(company-go))
  (setq company-tooltip-limit 20)
  (setq company-idle-delay .1)
  (setq company-echo-delay 0)
  (setq company-begin-commands '(self-insert-command))
  (company-mode))

(add-hook 'go-mode-hook 'go-mode-setup)
(add-hook 'go-mode-hook 'go-company-setup)

(provide 'init-go-mode)