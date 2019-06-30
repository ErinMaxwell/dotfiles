;;; --- [ GLOBAL Customizations and Misc. ] ----------------------
;; Run the server:
(server-start)
;; Turn on font-lock mode for color text
(global-font-lock-mode t)

;; If you want text mode as fundamental major mode:
(setq default-major-mode 'text-mode)

;; Auto-save interval set to every 800 keystrokes:
(setq auto-save-interval 800)

;; No menu bar!
(setq menu-bar-mode 0)

;; show line/col in modeline
(setq column-number-mode t)

;; uncompress before editing
(auto-compression-mode 1)

;; increase history size from default 32
(setq comint-input-ring-size 1024)

;; suppress echo of passwords in shell buffers
(add-hook 'comint-output-filter-functions
	  'comint-watch-for-password-prompt)

;; FIXME: We need to set this up so this only runs for Emacs 23:
(set-default-font "DejaVu Sans Mono-10")

;; Disable irritating splash screen on startup and toolbar
(setq inhibit-splash-screen t)
(tool-bar-mode -1)

;;; --- [ END GLOBAL Customizations and Misc. ] ------------------


;;; --- [ Text Mode Customizations ] -----------------------------
;; There are 2 *mutually exclusive* options for text fill modes,
;; auto-fill and refill.  Refill has some known issues, so use
;; only auto-fill. To chance, uncomment refill and comment auto-fill.
(add-hook 'text-mode-hook 'turn-on-auto-fill)
; (add-hook 'text-mode-hook (lambda () (refill-mode 1)))
;;; --- [ END Text Mode Customizations ] -------------------------


;;; --- [ CPERL Mode Customizations ] ----------------------------
(defalias 'perl-mode 'cperl-mode)	; we want CPerl mode, not Perl mode
(add-to-list 'auto-mode-alist
	     '("\\.\\([pP]\\([Llm]\\|[oO][dD]\\)\\|al\\)\\'" . perl-mode))
(add-to-list 'interpreter-mode-alist '("perl" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("perl5" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("miniperl" . cperl-mode))
(setq cperl-invalid-face nil)		; no underlines on whitespace
(setq cperl-electric-keywords t)	; expand for keywords
(setq cperl-electric-parens t)
(setq cperl-indent-level 4)
(setq cperl-close-paren-offset -4)
(setq cperl-continued-statement-offset 4)
(setq cperl-label-offset -4)
;;; --- [ END CPERL Mode Customizations ] ------------------------

;;; --- [ CC mode customizations ] -------------------------------
(setq c-basic-offset 4)
;;; --- [ END CC mode customizations ] ---------------------------

;;; --- [ Org mode customizations ] ------------------------------
;; The following lines are always needed.  Choose your own keys.
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
;;; --- [ END Org mode customizations ] --------------------------

;; For remote file editing, we'll use "tramp".
;; http://jeremy.zawodny.com/blog/archives/000983.html for more info
(require 'tramp)
(setq tramp-default-method "ssh")
;; To edit a remote file, use the following syntax:
;; /myserver:path/file

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
;; '(default ((t (:stipple nil :background "#000000" :foreground "green3" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 60 :width normal :family "schumacher-clean"))))
 '(default ((t (:stipple nil :background "#000000" :foreground "green3" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil ))))
 '(cursor ((t (:background "green2")))))
