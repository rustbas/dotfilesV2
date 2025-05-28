;; Turn off bell
(setq ring-bell-function 'ignore)

;; no tab indent
(setq-default indent-tabs-mode nil)

;; show non print chars
(global-whitespace-mode 0)

;; no startup msg  
(setq inhibit-startup-message t)

;; Relative number & highlight current line
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)
(global-hl-line-mode 1)

;; Remove stuff on the top
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(column-number-mode 1)

;; Set font
(set-frame-font "Jetbrains Mono 15" nil t)
;; (set-face-attribute 'default nil :height 150) ;; fontsize scale

;; Backups (files~)
(setq backup-directory-alist `(("." . "~/.cache/EmacsBackups")))

;; IDO mode
(load-file "/home/rustam/.config/emacs/additional-files/ido.el")
				       
;; Packages			       
(load-file "/home/rustam/.config/emacs/additional-files/packages.el")
				       
;; Org-mode stuff		       
(load-file "/home/rustam/.config/emacs/additional-files/orgmode.el")

;; colorize output in compile buffer
(require 'ansi-color)
(defun colorize-compilation-buffer ()
  (ansi-color-apply-on-region compilation-filter-start (point-max)))
(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)

;; bind `compile` and `recompile` functions
(global-set-key (kbd "C-c m") 'compile)
(global-set-key (kbd "C-c r") 'recompile)

;; auto-revert buffers
(global-auto-revert-mode 1)

;; close all buffers
(defun close-all-buffers ()
(interactive)
  (mapc 'kill-buffer (buffer-list)))
