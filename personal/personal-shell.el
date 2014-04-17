;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'shell)
(require 'tramp)

(setq shell-prompt-pattern "^.*[❯#$%>]+ *.*")
(setq tramp-shell-prompt-pattern "^.*[❯#$%>]+ *.*")

(provide 'personal-shell)
;;; personal-shell.el ends here
