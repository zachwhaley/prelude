;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'jedi)

(defun personal-python-mode-defaults ()
  "Personal default python hook."
  (jedi:setup)
  (jedi:ac-setup))

(add-hook 'python-mode-hook 'personal-python-mode-defaults)

(setq jedi:complete-on-dot t)

;;; personal-python.el ends here
