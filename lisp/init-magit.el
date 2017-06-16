(require 'magit)

(eval-after-load 'magit
  '(progn
     (global-set-key (kbd "C-c g") 'magit-status)
     (global-set-key (kbd "<f12>") 'magit-status)
     (nvmap :prefix "," "cg" 'magit-status)))


(provide 'init-magit)
