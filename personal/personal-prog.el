;;; package --- Summary
;;; Commentary:
;;; Code:

;; YASnippet magic!
(require 'yasnippet)
(yas-reload-all)

(defun personal-prog-mode-defaults ()
  "Personal default coding hook."
  ;; For God's sake indent when I press return.
  (electric-indent-mode +1)
  (yas-minor-mode))

(add-hook 'prelude-prog-mode-hook 'personal-prog-mode-defaults t)

(provide 'personal-prog)
;;; personal-prog.el ends here
