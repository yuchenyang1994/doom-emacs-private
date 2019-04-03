;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
(setq
      doom-font (font-spec :family "Iosevka" :size 14)
      doom-variable-pitch-font (font-spec :family "Iosevka")
      doom-unicode-font (font-spec :family "Fira Mono")
      doom-big-font (font-spec :family "Iosevka" :size 19)
      doom-theme 'doom-nova)

;; set lsp
(setq
 lsp-ui-flycheck-enable t
 lsp-ui-sideline-enable nil
 lsp-ui-sideline-ignore-duplicate t
 lsp-enable-completion-at-point t
 lsp-ui-doc-position 'at-point
 )

(when (memq window-system '(mac ns x))
  (require 'exec-path-from-shell)
  (setq-default exec-path-from-shell-shell-name "/usr/bin/zsh")
  (exec-path-from-shell-copy-env "RUST_SRC_PATH")
  (exec-path-from-shell-initialize)
  )
