;; package --- tweeks
;; AUTHOR: Shane Mook
;; URL: http://batsov.com/prelude
;; Version: 1.0.0
;; Keywords: config

;; This file is not part of GNU Emacs.

;;; Commentary:

;; This file simply sets up the default load path and requires
;; the various modules defined within Emacs Prelude.

;;; Code:

;; Custom Packages

;; Manage packages with Cask
(message "Loading Cask and Pallet...")

(require 'cask "/usr/local/Cellar/cask/0.7.2/cask.el")
(prelude-require-packages
  '(pallet))

(cask-initialize "~/.emacs.d/")

(require 'pallet)

(add-to-list 'default-frame-alist '(fullscreen . maximized))

(autoload 'color-theme-approximate-on "color-theme-approximate")
(color-theme-approximate-on)
(disable-theme 'zenburn)

(require 'powerline)
(require 'moe-theme)
(powerline-moe-theme)
(moe-dark)

(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

(add-hook 'neotree-mode-hook
            (lambda ()
              (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
              (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-enter)
              (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
              (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))

(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)

(define-key global-map (kbd "RET") 'newline-and-indent)

(require 'rspec-mode)
;; Fix to run specs in rspec-mode: https://github.com/pezra/rspec-mode
(defadvice rspec-compile (around rspec-compile-around)
  "Use BASH shell for running the specs because of ZSH issues."
  (let ((shell-file-name "/bin/bash"))
    ad-do-it))

(ad-activate 'rspec-compile)

;; Add path to file name
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; And scroll like a program written after 1976.
(global-set-key "\C-v"
(lambda () (interactive)
 (condition-case nil (scroll-up)
   (end-of-buffer (goto-char (point-max))))))

(global-set-key "\M-v"
(lambda () (interactive)
 (condition-case nil (scroll-down)
   (beginning-of-buffer (goto-char (point-min))))))

;; (require 'smart-mode-line)
;; (sml/setup)

(require 'ido-vertical-mode)
(ido-mode 1)
(ido-vertical-mode 1)

(add-hook 'ruby-mode-hook 'rvm-activate-corresponding-ruby)
;;(add-hook 'ruby-mode-hook 'rspec-verifiable-mode)

(scroll-bar-mode -1)
(global-linum-mode 1)

;; (add-hook 'emacs-startup-hook (lambda ()
;;     ()))

;; Setup tab switching with elscreen
(global-set-key "\M-n"
  (lambda () (interactive)
    (elscreen-create)))

(global-set-key "\M-}"
  (lambda () (interactive)
    (elscreen-next)))

(global-set-key "\M-{"
  (lambda () (interactive)
    (elscreen-previous)))

(require 'helm)
(global-set-key "\C-c \ " 'helm-elscreen)

;; Projectile Keymaps
(add-hook 'projectile-mode-hook 'projectile-rails-on)

(global-set-key (kbd "H-d")
  (lambda () (interactive)
    (projectile-rails-goto-schema)))

(global-set-key (kbd "H-g")
  (lambda () (interactive)
    (projectile-rails-goto-gemfile)))

(global-set-key (kbd "H-r")
  (lambda () (interactive)
    (projectile-rails-goto-routes)))

(global-set-key (kbd "H-v")
  (lambda () (interactive)
    (rspec-verify)))

(global-set-key (kbd "H-r")
  (lambda () (interactive)
    (rspec-rerun)))

(global-set-key (kbd "H-m")
  (lambda () (interactive)
    (rspec-verify-matching)))

(global-set-key (kbd "H-a")
  (lambda () (interactive)
    (rspec-verify-all)))

(global-set-key (kbd "H-s")
  (lambda () (interactive)
    (rspec-find-spec-or-target-find-example-other-window)))

(global-set-key (kbd "H-o")
  (lambda () (interactive)
    (projectile-find-file)))

(global-set-key (kbd "H-p")
  (lambda () (interactive)
    (projectile-switch-project)))

(elscreen-start)

;; Robe setup
(defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
  (rvm-activate-corresponding-ruby))

(require 'company)
(add-hook 'ruby-mode-hook 'robe-mode)
(push 'company-robe company-backends)

;;; tweeks.el ends here
