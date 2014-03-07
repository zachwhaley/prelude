;;; package --- Summary
;;; Commentary:
;;; Code:

;; Smartparens magic!
(require 'smartparens)

;; Add some custom pairs
;; Block comments
(sp-local-pair '(c-mode c++-mode java-mode) "/*" "*/" :actions '(insert))

;; After a curly brace and a return create a newline for the closing curly
;; brace, move the cursor back up, and indent according to mode.
(sp-local-pair '(c-mode c++-mode java-mode) "{" nil
               :post-handlers '(:add ("||\n[i]" "RET")))

;; Fancify block comments in C/C++ and Java
(sp-local-pair '(c-mode c++-mode java-mode) "/*" nil
               :post-handlers '(" | " ("* ||[i]\n[i]" "RET")))

(provide 'personal-c)
;;; personal-c.el ends here
