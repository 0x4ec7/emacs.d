(require-package 'undo-tree)
(global-undo-tree-mode)

(global-set-key (kbd "C-x u") 'undo-tree-visualize)

(provide 'init-undo-tree)