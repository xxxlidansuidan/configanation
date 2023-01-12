
(use-package smartparens
    :init      (progn
                 (require 'smartparens)
                 (load-library "smartparens-config"))

    :config   (progn
                (smartparens-global-mode t)
                (sp-local-pair 'emacs-lisp-mode "`" nil :when '(sp-in-string-p))
                (sp-with-modes '(html-mode sgml-mode nxml-mode web-mode)
                               (sp-local-pair "<" ">")))
    :bind
    (("C-M-k" . sp-kill-sexp-with-a-twist-of-lime)
     ("C-M-<backspace>" #'backward-kill-sexp)
     ("C-M-f" . sp-forward-sexp)
     ("C-M-b" . sp-backward-sexp)
     ("C-M-n" . sp-up-sexp)
     ("C-M-d" . sp-down-sexp)
     ("C-M-u" . sp-backward-up-sexp)
     ("C-M-p" . sp-backward-down-sexp)
     ("C-M-w" . sp-copy-sexp)
     ("M-s" . sp-splice-sexp)
     ("M-r" . sp-splice-sexp-killing-around)
     ("C-)" . sp-forward-slurp-sexp)
     ("C-}" . sp-forward-barf-sexp)
     ("C-(" . sp-backward-slurp-sexp)
     ("C-{" . sp-backward-barf-sexp)
     ("M-S" . sp-split-sexp)
     ("M-J" . sp-join-sexp)
     ("C-M-t" . sp-transpose-sexp))
    :delight " ⎎")

(use-package smartparens
    :init
  (bind-key "C-M-S-<SPC>" (lambda () (interactive) (mark-sexp -1)))

  :config (smartparens-global-mode t)
  (sp-pair "'" nil :actions :rem)
  (sp-pair "`" nil :actions :rem)
  (setq sp-highlight-pair-overlay nil))

(use-package smartparens
    :init (require 'smartparens-config)
    :config
    (smartparens-global-mode t) ; these options can be t or nil.
    (show-smartparens-global-mode t)
    (setq sp-show-pair-from-inside t)
    :custom-face
    (sp-show-pair-match-face ((t (:foreground "White")))) ;; Could also have :background "Grey" for example.
    )
