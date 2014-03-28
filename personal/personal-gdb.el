;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'evil)

(defun personal-gdb-mode-defaults ()
  "Personal default gdb hook."
  ;; Turn off Evil
  (evil-emacs-state))

(add-hook 'gdb-mode-hook 'personal-gdb-mode-defaults t)

(provide 'personal-gdb)
;;; personal-gdb.el ends here
