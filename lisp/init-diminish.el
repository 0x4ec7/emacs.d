(eval-after-load "whitespace"
  '(diminish 'whitespace-mode))
(eval-after-load "which-key"
  '(diminish 'which-key-mode))
(eval-after-load "git-gutter"
  '(diminish 'git-gutter-mode))
(eval-after-load "flymake"
  '(diminish 'flymake-mode))
(eval-after-load "paredit"
  '(diminish 'paredit-mode))
(eval-after-load "smartparens"
  '(diminish 'smartparens-mode))
(eval-after-load "files"
  '(diminish 'auto-revert-mode))
(eval-after-load "paredit"
 '(diminish 'paredit-mode))
(eval-after-load "eldoc"
  '(diminish 'eldoc-mode))

(eval-after-load "undo-tree"
  '(diminish 'undo-tree-mode " Ⓤ "))
(eval-after-load "company"
  '(diminish 'company-mode " Ⓒ "))
(eval-after-load "yasnippet"
  '(progn
     (diminish 'yas-global-mode " Ⓨ ")
     (diminish 'yas-minor-mode " ⓨ ")))
(eval-after-load "flycheck"
  '(diminish 'flycheck-mode " Ⓕ "))
(eval-after-load "evil-escape"
  '(diminish 'evil-escape-mode " Ⓥ "))


(provide 'init-diminish)