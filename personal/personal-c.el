;;; package --- Summary
;;; Commentary:
;;; Code:

;; Smartparens magic!
(require 'smartparens)

;; Add some custom pairs
;; Block comments
(sp-local-pair 'c-mode-common "/*" "*/" :actions '(insert))

;; After a curly brace and a return create a newline for the closing curly
;; brace, move the cursor back up, and indent according to mode.
(sp-local-pair 'c-mode-common "{" nil :post-handlers '(("||\n[i]" "RET")))

;; Fancify block comments in C/C++ and Java
(sp-local-pair 'c-mode-common "/*" nil :post-handlers '(("* ||[i]\n[i]" "RET")))
(sp-local-pair 'c-mode-common "/*" nil :post-handlers '((" |" "SPC")) t)

(provide 'personal-c)
;;; personal-c.el ends here
