;; Turn off bell
(setq ring-bell-function 'ignore)

;; Relative number & highlight current line
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)
(global-hl-line-mode 1)

;; Remove stuff on the top
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(column-number-mode 1)

;; IDO mode
(load-file "/home/rustam/.config/emacs/additional-files/ido.el")
				       
;; Packages			       
(load-file "/home/rustam/.config/emacs/additional-files/packages.el")
				       
;; Org-mode stuff		       
(load-file "/home/rustam/.config/emacs/additional-files/orgmode.el")
