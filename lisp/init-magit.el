(require 'magit)


(eval-after-load 'magit
  '(progn
     (global-set-key (kbd "C-c g") 'magit-status)))


(provide 'init-magit)