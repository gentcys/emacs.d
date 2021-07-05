;;; init-web.el --- Support for editing web templates -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require-package 'web-mode)

(when (maybe-require-package 'web-mode)
  (add-to-list 'auto-mode-alist '("\\.blade\\.php\\'" . web-mode))

  (setq web-mode-engines-alist
        '(("blade" . "\\.blade\\."))))


(provide 'init-web)
;;; init-web.el ends here
