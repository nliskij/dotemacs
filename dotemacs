(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(require 'evil)
(evil-mode 1)

(setq-default indent-tabs-mode nil)

(setq
    backup-by-copying t      ; don't clobber symlinks
    backup-directory-alist
    '(("." . "~/.backups"))    ; don't litter my fs tree
    delete-old-versions t
    kept-new-versions 6
    kept-old-versions 2
    version-control t)       ; use versioned backups

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (manoj-dark)))
 '(package-selected-packages
   (quote
    (cider psc-ide purescript-mode clojure-mode forth-mode intero haskell-mode flycheck recover-buffers multi-term irony-eldoc evil dtrt-indent company-jedi company-irony-c-headers company-irony company-c-headers auto-complete)))
 '(purescript-mode-hook (quote (turn-on-purescript-indentation))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq c-default-style "stroustrup"
      c-basic-offset 4)

(require 'company)
(setq company-idle-delay 0.05)
(eval-after-load 'company-mode
 '(add-to-list 'company-backends 'company-irony
))

(add-hook 'after-init-hook 'global-company-mode)

(defun my/python-mode-hook ()
  '(add-to-list 'company-backends company-jedi))
(add-hook 'python-mode-hook 'my/python-mode-hook)

(add-hook 'haskell-mode-hook 'intero-mode)

(require 'forth-mode)

(require 'purescript-mode)
(require 'psc-ide)
(add-hook 'purescript-mode-hook
          (lambda ()
            (psc-ide-mode)
            (company-mode)
            (flycheck-mode)
            (turn-on-purescript-indentation)))

(require 'dtrt-indent)
(dtrt-indent-mode 1)

(require 'multi-term)
(setq multi-term-program "/usr/bin/fish")
