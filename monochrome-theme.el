;;; monochrome-theme.el --- A dark Emacs 24 theme for your focused hacking sessions

;; Copyright (C) 2011-2014 Xavier Noria
;;
;; Author: Xavier Noria <fxn@hashref.com>
;;
;; Just throw this file into ~/.emacs.d and
;;
;;     M-x load-theme RET monochrome RET
;;
;; or put in your init file
;;
;;     (load-theme 'monochrome)
;;
;; This theme is based on the builtin dichromacy theme.
;;
;; Works with Emacs 24.

(deftheme monochrome
  "Gray on black for your focused hacking sessions.")

(let ((class '((class color) (min-colors 10)))
      (black "black")
      (white "white")
      (lgray "light gray")
      (dgray "dark gray")
      (sgray "light slate gray"))

  (custom-theme-set-faces
   'monochrome

   `(default ((,class (:foreground ,lgray :background ,black))))
   `(cursor ((,class (:background ,lgray))))

   ;; Highlighting faces
   `(fringe ((t (:background "black" :foreground "light gray"))))
   `(highlight ((,class (:foreground ,black :background ,lgray))))
   `(region ((,class (:foreground ,black :background ,lgray))))
   `(region ((t (:background "dim gray" :foreground "white"))))
   `(secondary-selection ((,class (:foreground: ,black :background ,sgray))))
   `(isearch ((,class (:foreground ,black :background ,lgray))))
   `(lazy-highlight ((,class (:foreground ,black :background ,lgray))))
   `(linum ((,class (:foreground ,dgray :slant italic))))
   `(trailing-whitespace ((,class (:background "red"))))

   ;; Mode line faces
   `(mode-line ((t (:background "black" :foreground "black" :box (:line-width -1 :style released-button)))))
   `(mode-line-inactive ((t (:background "dim gray" :foreground "black" :box (:line-width -1 :style released-button)))))

   ;; Whitespace-mode
   `(whitespace-empty ((,class (:background unspecified :foreground "red"))))
   `(whitespace-line ((,class (:background ,lgray :foreground ,black))))

   ;; Escape and prompt faces
   `(minibuffer-prompt ((,class (:weight bold :foreground ,lgray))))
   `(escape-glyph ((,class (:foreground ,lgray))))
   `(error ((,class (:weight bold :slant italic :foreground "red"))))
   `(warning ((,class (:foreground "yellow"))))
   `(success ((,class (:foreground "green"))))

   ;; Font lock faces
   `(font-lock-builtin-face ((,class (:foreground ,lgray))))
   `(font-lock-comment-face ((,class (:slant italic :foreground ,dgray))))
   `(font-lock-constant-face ((,class (:weight bold :foreground ,lgray))))
   `(font-lock-function-name-face ((,class (:foreground ,white))))
   `(font-lock-keyword-face ((,class (:weight bold :foreground ,white))))
   `(font-lock-string-face ((,class (:foreground ,sgray))))
   `(font-lock-type-face ((,class (:weight bold :foreground ,lgray))))
   `(font-lock-variable-name-face ((,class (:weight bold :foreground ,sgray))))
   `(font-lock-warning-face ((,class (:foreground "yellow"))))

   ;; Button and link faces
   `(link ((,class (:underline t :foreground ,lgray))))
   `(link-visited ((,class (:underline t :foreground ,lgray))))

   ;; Show-paren
   `(show-paren-match ((t (:background ,sgray))))
   `(show-paren-mismatch ((t (:background "red"))))

   ;; Speedbar
   `(speedbar-button-face ((,class (:foreground ,dgray))))
   `(speedbar-file-face ((,class (:foreground ,lgray))))
   `(speedbar-directory-face ((,class (:weight bold :foreground ,white))))
   `(speedbar-tag-face ((,class (:foreground ,dgray))))
   `(speedbar-selected-face ((,class (:underline ,lgray :foreground ,lgray))))
   `(speedbar-highlight-face ((,class (:weight bold :background ,black :foreground ,white))))

   ;; ido
   `(ido-first-match ((,class (:foreground ,lgray))))
   `(ido-only-match ((,class (:underline ,lgray :foreground ,lgray))))
   `(ido-subdir ((,class (:weight bold :foreground ,white))))

   ;; MuMaMo
   `(mumamo-background-chunk-major ((,class (:background ,black))))
   `(mumamo-background-chunk-submode1 ((,class (:background ,black))))
   `(mumamo-background-chunk-submode2 ((,class (:background ,black))))
   `(mumamo-background-chunk-submode3 ((,class (:background ,black))))
   `(mumamo-background-chunk-submode4 ((,class (:background ,black))))
   `(mumamo-border-face-in ((,class (:slant unspecified :underline unspecified
                                     :weight bold :foreground ,white))))
   `(mumamo-border-face-out ((,class (:slant unspecified :underline unspecified
                                      :weight bold :foreground ,white))))

   ;; Gnus faces
   `(gnus-group-news-1 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-news-1-low ((,class (:foreground ,lgray))))
   `(gnus-group-news-2 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-news-2-low ((,class (:foreground ,lgray))))
   `(gnus-group-news-3 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-news-3-low ((,class (:foreground ,lgray))))
   `(gnus-group-news-4 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-news-4-low ((,class (:foreground ,lgray))))
   `(gnus-group-news-5 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-news-5-low ((,class (:foreground ,lgray))))
   `(gnus-group-news-low ((,class (:foreground ,lgray))))
   `(gnus-group-mail-1 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-mail-1-low ((,class (:foreground ,lgray))))
   `(gnus-group-mail-2 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-mail-2-low ((,class (:foreground ,lgray))))
   `(gnus-group-mail-3 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-mail-3-low ((,class (:foreground ,lgray))))
   `(gnus-group-mail-low ((,class (:foreground ,lgray))))
   `(gnus-header-content ((,class (:foreground ,lgray))))
   `(gnus-header-from ((,class (:weight bold :foreground ,lgray))))
   `(gnus-header-subject ((,class (:foreground ,lgray))))
   `(gnus-header-name ((,class (:foreground ,lgray))))
   `(gnus-header-newsgroups ((,class (:foreground ,lgray))))

   ;; Message faces
   `(message-header-name ((,class (:foreground ,lgray))))
   `(message-header-cc ((,class (:foreground ,lgray))))
   `(message-header-other ((,class (:foreground ,lgray))))
   `(message-header-subject ((,class (:foreground ,lgray))))
   `(message-header-to ((,class (:weight bold :foreground ,lgray))))
   `(message-cited-text ((,class (:slant italic :foreground ,lgray))))
   `(message-separator ((,class (:weight bold :foreground ,lgray))))

   ;; EShell
   `(eshell-prompt ((,class (:foreground ,white :bold t))))
   `(eshell-ls-archive ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-backup ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-clutter ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-directory ((,class (:foreground ,lgray :bold t))))
   `(eshell-ls-executable ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-missing ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-product ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-readonly ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-special ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-symlink ((,class (:inherit eshell-ls-unreadable))))

   ;; Org-mode
   `(org-level-1 ((t (:bold t :foreground ,lgray :height 1.5))))
   `(org-level-2 ((t (:bold nil :foreground ,lgray :height 1.2))))
   `(org-level-3 ((t (:bold t :foreground ,lgray :height 1.0))))
   `(org-level-4 ((t (:bold nil :foreground ,lgray :height 1.0))))
   `(org-link ((t (:foreground ,sgray :underline t))))
   `(org-todo ((t (:bold t :foreground "red"))))
   `(org-done ((t (:bold t :foreground "green"))))

   ;; helm
   `(helm-header ((t (:foreground ,dgray :background ,black :underline nil :box nil))))
   `(helm-source-header
     ((t (:foreground ,white
                      :background ,black
                      :underline nil
                      :weight bold
                      :box (:line-width 1 :style released-button)))))
   `(helm-selection ((t (:background ,lgray :underline t :foreground ,black))))
   `(helm-selection-line ((t (:background ,black))))
   `(helm-visible-mark ((t (:foreground ,black :background ,white))))
   `(helm-candidate-number ((t (:foreground ,lgray :background ,black))))
   `(helm-separator ((t (:foreground ,white :background ,black))))
   `(helm-time-zone-current ((t (:foreground ,lgray :background ,black))))
   `(helm-time-zone-home ((t (:foreground ,white :background ,black))))
   `(helm-bookmark-addressbook ((t (:foreground ,lgray :background ,black))))
   `(helm-bookmark-directory ((t (:foreground nil :background nil :inherit helm-ff-directory))))
   `(helm-bookmark-file ((t (:foreground nil :background nil :inherit helm-ff-file))))
   `(helm-bookmark-gnus ((t (:foreground ,white :background ,black))))
   `(helm-bookmark-info ((t (:foreground ,lgray :background ,black))))
   `(helm-bookmark-man ((t (:foreground ,white :background ,black))))
   `(helm-bookmark-w3m ((t (:foreground ,white :background ,black))))
   `(helm-buffer-not-saved ((t (:foreground ,white :background ,black))))
   `(helm-buffer-process ((t (:foreground ,white :background ,black))))
   `(helm-buffer-saved-out ((t (:foreground ,lgray :background ,black))))
   `(helm-buffer-size ((t (:foreground ,lgray :background ,black))))
   `(helm-ff-directory ((t (:foreground ,white :background ,black :weight bold))))
   `(helm-match ((t (:background "white" :foreground "black"))))
   `(helm-ff-file ((t (:foreground ,lgray :background ,black :weight normal))))
   `(helm-ff-executable ((t (:foreground ,lgray :background ,black :weight normal))))
   `(helm-ff-invalid-symlink ((t (:foreground ,white :background ,black :weight bold))))
   `(helm-ff-symlink ((t (:foreground ,white :background ,black :weight bold))))
   `(helm-ff-prefix ((t (:foreground ,black :background ,white :weight normal))))
   `(helm-grep-cmd-line ((t (:foreground ,white :background ,black))))
   `(helm-grep-file ((t (:foreground ,lgray :background ,black))))
   `(helm-grep-finish ((t (:foreground ,lgray :background ,black))))
   `(helm-grep-lineno ((t (:foreground ,lgray :background ,black))))
   `(helm-grep-match ((t (:foreground nil :background nil :inherit helm-match))))
   `(helm-grep-running ((t (:foreground ,white :background ,black))))
   `(helm-moccur-buffer ((t (:foreground ,white :background ,black))))
   `(helm-mu-contacts-address-face ((t (:foreground ,lgray :background ,black))))
   `(helm-mu-contacts-name-face ((t (:foreground ,lgray :background ,black))))

   ;; Flyspell
   `(flyspell-duplicate ((,class (:weight unspecified :foreground unspecified
				  :slant unspecified :underline ,lgray))))
   `(flyspell-incorrect ((,class (:weight unspecified :foreground unspecified
                                          :slant unspecified :underline ,lgray)))))

  ;; Magit
  '(magit-diff-add ((t (:foreground "dark sea green"))))
  '(magit-diff-del ((t (:foreground "light coral"))))
  '(magit-diff-file-header ((t (:box (:line-width 2 :color "grey75" :style released-button)))))
  '(magit-diff-hunk-header ((t (:weight bold))))
  '(magit-item-highlight ((t (:weight bold))))

  (custom-theme-set-variables
   'monochrome
   `(ansi-color-names-vector [,black ,lgray ,dgray ,sgray])))

;; Autoload for MELPA

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'monochrome)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; monochrome-theme.el ends here
