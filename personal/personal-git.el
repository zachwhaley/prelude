;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'evil)

(defun personal-git-mode-defaults ()
  "Personal default git hook."
  ;; Turn off Evil
  (evil-emacs-state))

(add-hook 'git-commit-mode-hook 'personal-git-mode-defaults t)

(provide 'personal-git)
;;; personal-git.el ends here
