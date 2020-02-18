;; replace region
(delete-selection-mode 1)

(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)
(evil-leader/set-key "j i" 'imenu)

;; Rust mode settings
(defun rust-config ()
  (setq fci-rule-column 110)
  )

(add-hook 'rust-mode-hook 'rust-config)
