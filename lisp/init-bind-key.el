(require 'bind-key)

(bind-key* "C-q" 'isearch-forward-symbol-at-point)
;; disable C-z & C-x C-z to avoid exiting emacs by mistake
(bind-key* "C-z" 'undo-tree-undo)
(bind-key* "C-x C-z" 'undo-tree-visualize)

(require 'multiple-cursors)
(bind-key* "C-c C-e" 'mc/edit-lines)
(bind-key* "C-c C-n" 'mc/mark-next-like-this-symbol)
(bind-key* "C-c C-p" 'mc/mark-previous-symbol-like-this)
(bind-key* "C-c C-a" 'mc/mark-all-symbols-like-this)
(bind-key* "C-c C-s" 'mc--mark-symbol-at-point)

(require 'fiplr)
(bind-key* "C-x C-f" 'fiplr-find-file)

(require 'window-numbering)
(bind-key* "C-x <up>" 'windove-up)
(bind-key* "C-x <down>" 'windmove-down)
(bind-key* "C-x <right>" 'windmove-right)
(bind-key* "C-x <left>" 'windmove-left)
(bind-key* "C-x 2" (lambda () (interactive) (split-window-below) (other-window 1)))
(bind-key* "C-x 3" (lambda () (interactive) (split-window-right) (other-window 1)))

(require 'undo-tree)
(bind-key* "C-x u" 'undo-tree-visualize)

(require 'neotree)
(bind-key* "C-c t" 'neotree-toggle)
(bind-key* "C-c p" 'neotree-ffip-project-dir)

(require 'swiper)
(bind-key* "C-s" 'swiper)
(bind-key* "C-r" 'swiper-the-thing)
(bind-key* "C-c m" 'counsel-imenu-goto)

(bind-key* "C-k" 'kill-whole-line)
(bind-key* "M-;" 'my/comment-or-uncomment-region-or-line)
(bind-key* "M-o" 'my/newline-above)
(bind-key* "C-o" 'my/newline-below)

(bind-key* "<f7>" 'flycheck-previous-error)
(bind-key* "<f8>" 'flycheck-list-errors)
(bind-key* "<f9>" 'flycheck-next-error)

(provide 'init-bind-key)
