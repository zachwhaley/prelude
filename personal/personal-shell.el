;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'evil)
(require 'shell)
(require 'tramp)

(setq shell-prompt-pattern "^.*[❯#$%>]+ *.*")
(setq tramp-shell-prompt-pattern "^.*[❯#$%>]+ *.*")

(defun personal-shell-mode-defaults ()
  "Personal default shell hook."
  ;; Turn off Evil
  (evil-emacs-state))

(add-hook 'shell-mode-hook 'personal-shell-mode-defaults t)

(provide 'personal-shell)
;;; personal-shell.el ends here
