(setq interpreter-mode-alist
      (cons '("python" . python-mode) interpreter-mode-alist))

;; run command `pip install jedi flake8 importmagic` in shell,
;; or just check https://github.com/jorgenschaefer/elpy
(elpy-enable)

(defun python-mode-hook-setup ()
  (unless (is-buffer-file-temp)
    ;; run command `pip install jedi flake8 importmagic` in shell,
    ;; or just check https://github.com/jorgenschaefer/elpy
    (if (fboundp 'elpy-enable) (elpy-enable) (elpy-mode 1))
;;    (define-key elpy-mode-map (kbd "M-TAB") nil)
    (setq electric-indent-chars (delq ?: electric-indent-chars))
    (setq require-final-newline t)
    (setq mode-require-final-newline t)))

(add-hook 'python-mode-hook 'python-mode-hook-setup)

(require 'whitespace)
(setq whitespace-line-column 79)
(setq whitespace-style '(face lines-tail))
(add-hook 'python-mode-hook 'whitespace-mode)

(provide 'init-python-mode)
