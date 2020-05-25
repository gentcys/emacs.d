;;; init-lsp.el --- Language Server Protocol Support for Emacs -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (maybe-require-package 'lsp-mode)
  (setq lsp-enable-snippet nil)

  (when (maybe-require-package 'lsp-ui))
  (when (maybe-require-package 'lsp-ivy)))

(provide 'init-lsp)
;;; init-lsp.el ends here
