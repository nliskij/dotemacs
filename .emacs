(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(require 'evil)
(evil-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (manoj-dark)))
 '(package-selected-packages
   (quote
    (intero haskell-mode flycheck recover-buffers multi-term irony-eldoc evil dtrt-indent company-jedi company-irony-c-headers company-irony company-c-headers auto-complete))))
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

(require 'dtrt-indent)
(dtrt-indent-mode 1)

(require 'multi-term)
(setq multi-term-program "/usr/bin/fish")
