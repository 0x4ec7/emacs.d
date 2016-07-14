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
    (eval-after-load "elpy"
      '(cl-dolist (key '("C-c C-a" "C-c C-e" "C-c C-s" "C-c C-p" "C-c C-n"))
         (define-key elpy-mode-map (kbd key) nil)))
    (eval-after-load "python"
      '(cl-dolist (key '("C-c C-a" "C-c C-e" "C-c C-s" "C-c C-p" "C-c C-n"))
         (define-key python-mode-map (kbd key) nil)))
    ;; http://emacs.stackexchange.com/questions/3322/python-auto-indent-problem/3338#3338
    ;; emacs 24.4 only
    (setq electric-indent-chars (delq ?: electric-indent-chars))))

(add-hook 'python-mode-hook 'python-mode-hook-setup)

(require 'whitespace)
(setq whitespace-line-column 79)
(setq whitespace-style '(face lines-tail))
(add-hook 'python-mode-hook 'whitespace-mode)

(provide 'init-python-mode)
