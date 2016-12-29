(setq package-archives '(("ELPA" . "http://tromey.com/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(package-initialize)

(global-auto-complete-mode t)

(load "spacemacs-dark-theme.el")

(add-hook 'before-save-hook 'delete-trailing-whitespace)

;;(setq tags-table-list '("~/emacs"))
(defun create-tags (dir-name)
  "Create tags file."
  (interactive "DDirectory: ")
  (eshell-command
         (format "find %s -type f -iname \"*.cc\" | etags -" dir-name)))
       ;;(format "find %s -type f -iname \"*.h\" -o -iname \"*.cc\" | etags -" dir-name)))
(add-to-list 'load-path "/full/path/where/ace-jump-mode.el/in/")
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)
;;you can select the key you prefer to
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)


;;enable a more powerful jump back function from ace jump mode
(autoload
  'ace-jump-mode-pop-mark
  "ace-jump-mode"
  "Ace jump back:-)"
  t)
(eval-after-load "ace-jump-mode"
  '(ace-jump-mode-enable-mark-sync))
(define-key global-map (kbd "C-x SPC") 'ace-jump-mode-pop-mark)

;;auto update files when loaded
(global-auto-revert-mode t)

;;NO TABS
;;(setq-default indent-tabs-mode nil)

;;;;;;;;;;; NEOTREE ;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "/home/emathai/.emacs.d/elpa/neotree-20160306.730")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

(defun my-c-mode-common-hook ()
  ;; my customizations for all of c-mode, c++-mode, objc-mode, java-mode
  (c-set-offset 'substatement-open 0)
  ;; other customizations can go here

  (setq c++-tab-always-indent t)
  (setq c-basic-offset 2)                  ;; Default is 2
  (setq c-indent-level 2)                  ;; Default is 2

  ;;(setq tab-stop-list '(2 4 8 12 16 20 24 28 32 36 40 44 48 52 56 60))
  ;;(setq tab-width 2)
  (setq indent-tabs-mode nil)  ; use spaces only if nil
  )

(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

(require 'ido)
(ido-mode t)
