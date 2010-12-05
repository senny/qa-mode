;;; qa-mode.el --- Major mode to edit QA files for SuperMemo

;; Copyright (C) 2010 Yves Senn

;; Version 0.0.1
;; Keywords: QA SuperMemo major mode
;; Author: Yves Senn <yves.senn@gmail.com>
;; URL: http://github.com/senny/qa-mode

;; This file is not part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; if not, write to the Free Software
;; Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

;;; Commentary

;;; Code:
(provide 'qa-mode)

(defvar qa-font-lock-keywords
      `(("^Q:\\(.+\\)" 1 font-lock-constant-face)
        ("^A:\\(.+\\)" 1 font-lock-string-face)
        ("Q:\\|A:" . font-lock-keyword-face)))

;;;###autoload
(define-derived-mode qa-mode fundamental-mode
  "qa-mode"
  "Major mode for editing QA files for SuperMemo"

  ;; code for syntax highlighting
  (setq font-lock-defaults '((qa-font-lock-keywords)))

  ;; no tabs
  (setq indent-tabs-mode nil))


;;
;; On Load
;;

;;;###autoload
(add-to-list 'auto-mode-alist '("\\.qa$" . qa-mode))
