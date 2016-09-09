(require 'golden-ratio)

(setq golden-ratio-adjust-factor .8
      golden-ratio-wide-adjust-factor .8)
(golden-ratio-mode 1)

(eval-after-load 'golden-ratio
  '(progn
     (global-set-key (kbd "C-c w") 'golden-ratio-toggle-widescreen)
     (nvmap :prefix "," "cw" 'golden-ratio-toggle-widescreen)))


(provide 'init-golden-ratio)
