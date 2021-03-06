(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
	     '("org" . "https://orgmode.org/elpa/") t)

(setq package-pinned-packages
      '((org . "org")))
(package-initialize)

;; Bootstrap 'use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/.emacs.d/myinit.org")))
 '(package-selected-packages
   (quote
    (solarized-theme dashboard js2-refactor ac-js2 js2-mode web-mode multiple-cursors haskell-mode epc importmagic smart-tabs-mode elixir-format flycheck-credo flycheck-mix spaceline zerodark-theme smartparens-elixir smartparens-latex smartparens-python smartparens-html smartparens-config py-autopep8 material-theme ein better-defaults ggtags iedit expand-region aggressive-indent beacon yasnippet-snippets jedi htmlize org ox-reveal which-key use-package try counsel auto-complete ace-window))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherith ace-jump-face-foreground :height 3.0)))))
