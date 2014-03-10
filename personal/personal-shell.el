;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'evil)

(defun personal-shell-mode-defaults ()
  "Personal default shell hook."
  ;; Turn off Evil
  (evil-emacs-state))

(add-hook 'shell-mode-hook 'personal-shell-mode-defaults t)

(provide 'personal-shell)
;;; personal-shell.el ends here
