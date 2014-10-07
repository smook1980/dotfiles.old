;; package --- custom
;; AUTHOR: Shane Mook
;; URL: http://batsov.com/prelude
;; Version: 1.0.0
;; Keywords: convenience

;; This file is not part of GNU Emacs.

;;; Commentary:

;; This file simply sets up the default load path and requires
;; the various modules defined within Emacs Prelude.

;;; Code:

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(column-number-mode t)
 '(company-auto-complete (quote (quote company-explicit-action-p)))
 '(company-gtags-modes (quote (prog-mode jde-mode enh-ruby-mode)))
 '(company-idle-delay 0.5)
 '(custom-enabled-themes (quote (moe-dark)))
 '(custom-safe-themes
   (quote
    ("756597b162f1be60a12dbd52bab71d40d6a2845a3e3c2584c6573ee9c332a66e" default)))
 '(desktop-save-mode t)
 '(electric-pair-skip-self t)
 '(elscreen-tab-display-control t)
 '(elscreen-tab-display-kill-screen nil)
 '(enh-ruby-deep-indent-paren nil)
 '(evil-shift-width 2)
 '(fci-rule-color "#383838")
 '(flycheck-ruby-rubocop-executable "\"env rubocop\"")
 '(ido-vertical-define-keys (quote C-n-and-C-p-only))
 '(inf-ruby-default-implementation "pry")
 '(markdown-command "redcarpet --parse-fenced_code_blocks")
 '(menu-bar-mode t)
 '(multi-term-dedicated-select-after-open-p t)
 '(multi-term-dedicated-window-height 20)
 '(multi-term-program "/bin/bash")
 '(multi-term-program-switches "--login")
 '(multi-term-scroll-to-bottom-on-output t)
 '(paradox-github-token t)
 '(projectile-remember-window-configs t)
 '(rspec-command-options "")
 '(rspec-use-rake-when-possible t)
 '(rspec-use-rvm t)
 '(ruby-deep-arglist nil)
 '(scroll-bar-rvm-use-default nil)
 '(shell-file-name "/bin/bash")
 '(sp-autoskip-closing-pair (quote always))
 '(tab-width 2)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3")
 '(whitespace-line-column 100))

;;; custom.el ends here
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
