(require 'package)
(add-to-list 'package-archives
	     '("melpa"				.	"https://melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-quickhelp-color-background "#e8e8e8")
 '(company-quickhelp-color-foreground "#444444")
 '(custom-enabled-themes (quote (moe-dark)))
 '(custom-safe-themes
   (quote
    ("ae65ccecdcc9eb29ec29172e1bfb6cadbe68108e1c0334f3ae52414097c501d2" "19b9349a6b442a2b50e5b82be9de45034f9b08fa36909e0b1be09433234610bb" default)))
 '(fci-rule-color "#eeeeee")
 '(nrepl-message-colors
   (quote
    ("#8f4e8b" "#8f684e" "#c3a043" "#397460" "#54ab8e" "#20a6ab" "#3573b1" "#DC8CC3")))
 '(package-selected-packages
   (quote
    (powerline helm-clojuredocs helm-cider helm moe-theme zenburn-theme neotree doneburn-theme rainbow-delimiters company cider)))
 '(pdf-view-midnight-colors (quote ("#444444"	.	"#eeeeee")))
 '(vc-annotate-background "#f9f9f9")
 '(vc-annotate-color-map
   (quote
    ((20					.	"#844880")
     (40					.	"#8f4e8b")
     (60					.	"#8f684e")
     (80					.	"#cfb56e")
     (100					.	"#c3a043")
     (120					.	"#c3a043")
     (140					.	"#2a5547")
     (160					.	"#397460")
     (180					.	"#3b7863")
     (200					.	"#438972")
     (220					.	"#4c9a80")
     (240					.	"#54ab8e")
     (260					.	"#20a6ab")
     (280					.	"#234d76")
     (300					.	"#295989")
     (320					.	"#2e659c")
     (340					.	"#3573b1")
     (360					.	"#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(add-hook 'prog-mode-hook (global-company-mode t))
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))


;; neotree stuffs -
;; -enable,
;; -toggle setting [f8],
;; -find file/open node on start
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq neo-smart-open t)

;; electric pair - close delimiters
(electric-pair-mode [:electric-pair-preserve-balance 1
		     :electric-pair-delete-adjacent-pairs 1])


;; powerline
(require 'powerline)
(powerline-center-theme)

;; moe theme
(require 'moe-theme)
(moe-theme-set-color 'blue)
(moe-dark)

;; helm 
(global-set-key (kbd "M-x") 'helm-M-x)

;; custom keys - text alignment
(global-set-key (kbd "C-c a a") 'align)
(global-set-key (kbd "C-c a e") 'align-entire)
(global-set-key (kbd "C-c a c") 'align-current)
