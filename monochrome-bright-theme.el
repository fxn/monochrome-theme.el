
;;; monochrome-bright-theme.el --- A bright Emacs 24 theme for your focused hacking sessions during the day

;; Copyright (C) 2011 Xavier Noria
;;
;; Author: Xavier Noria <fxn@hashref.com>
;;
;; Just throw this file into ~/.emacs.d and
;;
;; M-x load-theme RET monochrome-bright RET
;;
;; or put in your init file
;;
;; (load-theme 'monochrome-bright)
;;
;; This theme is based on the builtin dichromacy theme.
;;
;; Works with Emacs 24.

(deftheme monochrome-bright
  "Black on white for your focused hacking sessions during the day.")

(let ((class '((class color) (min-colors 10)))
      (black "black")
      (white "white")
      (lgray "#b3b3b3")
      (dgray "#303030")
      (sgray "#606060"))

  (custom-theme-set-faces
   'monochrome-bright

   `(default ((,class (:foreground ,black :background ,white))))
   `(cursor ((,class (:background ,black))))

   ;; Highlighting faces
   `(fringe ((,class (:background ,dgray))))
   `(highlight ((,class (:foreground ,white :background ,dgray))))
   `(region ((,class (:foreground ,white :background ,dgray))))
   `(secondary-selection ((,class (:foreground: ,white :background ,sgray))))
   `(isearch ((,class (:foreground ,white :background ,dgray))))
   `(lazy-highlight ((,class (:foreground ,white :background ,dgray))))
   `(trailing-whitespace ((,class (:background "red"))))

   ;; Mode line faces
   `(mode-line ((,class (:box (:line-width -1 :style released-button)
:background "#e5e5e5" :foreground ,dgray))))
   `(mode-line-inactive ((,class (:box (:line-width -1 :style released-button)
:background "#b0b0b0"
:foreground ,black))))

   ;; Escape and prompt faces
    `(minibuffer-prompt ((,class (:weight bold :foreground ,dgray))))
    `(escape-glyph ((,class (:foreground ,dgray))))
    `(error ((,class (:background ,dgray :weight bold :slant italic :foreground "red"))))
    `(warning ((,class (:background ,dgray :foreground "yellow"))))
    `(success ((,class (:background ,dgray :foreground "green"))))

   ;; Font lock faces
   `(font-lock-builtin-face ((,class (:foreground ,dgray))))
   `(font-lock-comment-face ((,class (:slant italic :foreground ,lgray))))
   `(font-lock-constant-face ((,class (:weight bold :foreground ,dgray))))
   `(font-lock-function-name-face ((,class (:foreground ,black))))
   `(font-lock-keyword-face ((,class (:weight bold :foreground ,black))))
   `(font-lock-string-face ((,class (:foreground ,sgray))))
   `(font-lock-type-face ((,class (:weight bold :foreground ,dgray))))
   `(font-lock-variable-name-face ((,class (:weight bold :foreground ,lgray))))
   `(font-lock-warning-face ((,class (:foreground "yellow"))))

   ;; Button and link faces
   `(link ((,class (:underline t :foreground ,dgray))))
   `(link-visited ((,class (:underline t :foreground ,dgray))))

   ;; Speedbar
   `(speedbar-button-face ((,class (:foreground ,lgray))))
   `(speedbar-file-face ((,class (:foreground ,dgray))))
   `(speedbar-directory-face ((,class (:weight bold :foreground ,black))))
   `(speedbar-tag-face ((,class (:foreground ,lgray))))
   `(speedbar-selected-face ((,class (:underline ,lgray :foreground ,dgray))))
   `(speedbar-highlight-face ((,class (:weight bold :background ,white :foreground ,black))))

   ;; ido
   `(ido-first-match ((,class (:foreground ,dgray))))
   `(ido-only-match ((,class (:underline ,dgray :foreground ,dgray))))
   `(ido-subdir ((,class (:weight bold :foreground ,black))))

   ;; MuMaMo
   `(mumamo-background-chunk-major ((,class (:background ,white))))
   `(mumamo-background-chunk-submode1 ((,class (:background ,white))))
   `(mumamo-background-chunk-submode2 ((,class (:background ,white))))
   `(mumamo-background-chunk-submode3 ((,class (:background ,white))))
   `(mumamo-background-chunk-submode4 ((,class (:background ,white))))
   `(mumamo-border-face-in ((,class (:slant unspecified :underline unspecified
                                     :weight bold :foreground ,black))))
   `(mumamo-border-face-out ((,class (:slant unspecified :underline unspecified
                                      :weight bold :foreground ,black))))

   ;; Gnus faces
   `(gnus-group-news-1 ((,class (:weight bold :foreground ,dgray))))
   `(gnus-group-news-1-low ((,class (:foreground ,dgray))))
   `(gnus-group-news-2 ((,class (:weight bold :foreground ,dgray))))
   `(gnus-group-news-2-low ((,class (:foreground ,dgray))))
   `(gnus-group-news-3 ((,class (:weight bold :foreground ,dgray))))
   `(gnus-group-news-3-low ((,class (:foreground ,dgray))))
   `(gnus-group-news-4 ((,class (:weight bold :foreground ,dgray))))
   `(gnus-group-news-4-low ((,class (:foreground ,dgray))))
   `(gnus-group-news-5 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-news-5-low ((,class (:foreground ,lgray))))
   `(gnus-group-news-low ((,class (:foreground ,dgray))))
   `(gnus-group-mail-1 ((,class (:weight bold :foreground ,dgray))))
   `(gnus-group-mail-1-low ((,class (:foreground ,dgray))))
   `(gnus-group-mail-2 ((,class (:weight bold :foreground ,dgray))))
   `(gnus-group-mail-2-low ((,class (:foreground ,dgray))))
   `(gnus-group-mail-3 ((,class (:weight bold :foreground ,dgray))))
   `(gnus-group-mail-3-low ((,class (:foreground ,dgray))))
   `(gnus-group-mail-low ((,class (:foreground ,dgray))))
   `(gnus-header-content ((,class (:foreground ,dgray))))
   `(gnus-header-from ((,class (:weight bold :foreground ,dgray))))
   `(gnus-header-subject ((,class (:foreground ,dgray))))
   `(gnus-header-name ((,class (:foreground ,dgray))))
   `(gnus-header-newsgroups ((,class (:foreground ,dgray))))

   ;; Message faces
   `(message-header-name ((,class (:foreground ,dgray))))
   `(message-header-cc ((,class (:foreground ,dgray))))
   `(message-header-other ((,class (:foreground ,dgray))))
   `(message-header-subject ((,class (:foreground ,dgray))))
   `(message-header-to ((,class (:weight bold :foreground ,dgray))))
   `(message-cited-text ((,class (:slant italic :foreground ,dgray))))
   `(message-separator ((,class (:weight bold :foreground ,dgray))))

   ;; Flyspell
   `(flyspell-duplicate ((,class (:weight unspecified :foreground unspecified :slant unspecified :underline ,dgray))))
   `(flyspell-incorrect ((,class (:weight unspecified :foreground unspecified :slant unspecified :underline ,dgray)))))

  (custom-theme-set-variables
   'monochrome-bright
   `(ansi-color-names-vector [,white ,dgray ,lgray ,sgray])))

(provide-theme 'monochrome-bright)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; monochrome-bright-theme.el ends here




