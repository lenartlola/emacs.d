(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(global-display-line-numbers-mode 1) ; Display line numbers
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(projectile elcord clang-format ggtags volatile-highlights helm helm-gtags docker-compose-mode dockerfile-mode timu-macos-theme timu-rouge-theme neotree dired-sidebar)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(global-set-key [f8] 'neotree-toggle) ; set f8 to toggle neotree

(windmove-default-keybindings) ; A nice feature to switch between windows using Shift + arrows

; Disable annoying ~ backups
(setq make-backup-files nil)


; Theme
(load-theme 'timu-macos t)

; clang
(require 'clang-format)
(setq clang-format-style "file")

; Discord rich presence
(require 'elcord)
(elcord-mode)

; Tab settings
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

; projectile
(projectile-mode +1)
;; Recommended keymap prefix on macOS
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
;; Recommended keymap prefix on Windows/Linux
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
