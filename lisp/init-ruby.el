;;; init-ruby.el --- Support for the Ruby language -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;;; Basic Ruby setup
(require-package 'ruby-hash-syntax)

(add-auto-mode 'ruby-mode
               "\\.rxml\\'"
               "\\.rjs\\'" "\\.irbrc\\'" "\\.pryrc\\'" "\\.builder\\'" "\\.ru\\'"
               "\\.gemspec\\'" "\\Kirkfile\\'")
(add-auto-mode 'conf-mode "Gemfile\\.lock\\'")

(provide 'init-ruby)
;;; init-ruby.el ends here
