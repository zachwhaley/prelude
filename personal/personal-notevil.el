;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'evil)

(defun personal-notevil-mode ()
  "Personal default shell hook."
  ;; Turn off Evil
  (evil-emacs-state))

(add-hook 'gdb-mode-hook 'personal-notevil-mode t)
(add-hook 'git-commit-mode-hook 'personal-notevil-mode t)
(add-hook 'grep-mode-hook 'personal-notevil-mode t)
(add-hook 'shell-mode-hook 'personal-notevil-mode t)

(provide 'personal-notevil)
;;; personal-notevil.el ends here
