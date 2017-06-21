(require 'circe)

(setq circe-network-options
      '(("Freenode"
         :tls t
         :nick "x4ec7"
         :channels ("#emacs"))))

(defalias 'irc 'circe)


(provide 'init-irc)
