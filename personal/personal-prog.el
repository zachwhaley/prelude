;;; package --- Summary
;;; Commentary:
;;; Code:

;; Smartparens magic!
(require 'smartparens)
;; After a curly brace and a return create a newline for the closing curly
;; brace, move the cursor back up, and indent according to mode.
(sp-local-pair 'c++-mode "{" nil :post-handlers '(("||\n[i]" "RET")))

(defun personal-prog-mode-defaults ()
  "Personal default coding hook."
  ;; For God's sake indent when I press return.
  (electric-indent-mode +1))

(defvar personal-prog-mode-hook 'personal-prog-mode-defaults)
(add-hook 'prog-mode-hook (lambda ()
                            (run-hooks 'personal-prog-mode-hook)))

(provide 'personal-prog)
;;; personal-prog.el ends here
