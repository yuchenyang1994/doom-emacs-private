;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
(setq
      doom-font (font-spec :family "Iosevka" :size 14)
      doom-variable-pitch-font (font-spec :family "Iosevka")
      doom-big-font (font-spec :family "Iosevka" :size 19)
      doom-theme 'doom-dracula)

(when (memq window-system '(mac ns x))
  (require 'exec-path-from-shell)
  (setq-default exec-path-from-shell-shell-name "/usr/bin/zsh")
  (exec-path-from-shell-copy-env "RUST_SRC_PATH")
  (exec-path-from-shell-initialize)
  )
