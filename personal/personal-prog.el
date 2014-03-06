;;; package --- Summary
;;; Commentary:
;;; Code:

;; Smartparens magic!
(require 'smartparens)
;; Add some custom pairs
;; Block comments
(sp-local-pair 'c-mode "/*" "*/" :actions '(insert))
(sp-local-pair 'c++-mode "/*" "*/" :actions '(insert))
(sp-local-pair 'java-mode "/*" "*/" :actions '(insert))

;; After a curly brace and a return create a newline for the closing curly
;; brace, move the cursor back up, and indent according to mode.
(sp-local-pair 'c++-mode "{" nil :post-handlers '(("||\n[i]" "RET")))
(sp-local-pair 'java-mode "{" nil :post-handlers '(("||\n[i]" "RET")))
;; Fancify block comments in C/C++ and Java
(sp-local-pair 'c-mode "/*" "*/" :post-handlers '(("* ||[i]\n[i]" "RET")))
(sp-local-pair 'c++-mode "/*" "*/" :post-handlers '(("* ||[i]\n[i]" "RET")))
(sp-local-pair 'java-mode "/*" "*/" :post-handlers '(("* ||[i]\n[i]" "RET")))

(defun personal-prog-mode-defaults ()
  "Personal default coding hook."
  ;; For God's sake indent when I press return.
  (electric-indent-mode +1))

(defvar personal-prog-mode-hook 'personal-prog-mode-defaults)
(add-hook 'prog-mode-hook (lambda ()
                            (run-hooks 'personal-prog-mode-hook)))

(provide 'personal-prog)
;;; personal-prog.el ends here
