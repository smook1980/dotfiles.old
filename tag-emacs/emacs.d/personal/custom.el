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
 '(ansi-color-faces-vector [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(column-number-mode t)
 '(company-auto-complete (quote (quote company-explicit-action-p)))
 '(company-gtags-modes (quote (prog-mode jde-mode enh-ruby-mode)))
 '(company-idle-delay 0.5)
 '(custom-enabled-themes (quote (sanityinc-tomorrow-bright)))
 '(custom-safe-themes (quote ("756597b162f1be60a12dbd52bab71d40d6a2845a3e3c2584c6573ee9c332a66e" "3a727bdc09a7a141e58925258b6e873c65ccf393b2240c51553098ca93957723" "6a37be365d1d95fad2f4d185e51928c789ef7a4ccf17e7ca13ad63a8bf5b922f" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "3b819bba57a676edf6e4881bd38c777f96d1aa3b3b5bc21d8266fa5b0d0f1ebf" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" default)))
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
 '(whitespace-line-column 100))

;;; custom.el ends here
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
