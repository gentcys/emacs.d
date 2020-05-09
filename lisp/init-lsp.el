;;; init-lsp.el --- Language Server Protocol Support for Emacs -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (maybe-require-package 'lsp-mode)
  (add-hook 'python-mode-hook #'lsp-deferred)

  (when (maybe-require-package 'lsp-ivy)))

(provide 'init-lsp)
;;; init-lsp.el ends here
