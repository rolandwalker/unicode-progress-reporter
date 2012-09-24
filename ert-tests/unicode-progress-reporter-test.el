
;;; requires and setup

(when load-file-name
  (setq pcache-directory (expand-file-name "pcache/" (file-name-directory load-file-name)))
  (setq package-enable-at-startup nil)
  (setq package-load-list '((pcache t)
                            (persistent-soft t)
                            (ucs-utils t)))
  (when (fboundp 'package-initialize)
    (package-initialize)))

(require 'persistent-soft)
(require 'ucs-utils)
(require 'unicode-progress-reporter)

(let ((ucs-utils-trade-memory-for-speed nil)
      (ucs-utils-use-persistent-storage nil))
  (unicode-progress-reporter-setup))

;;; interactive tests

(ert-deftest unicode-progress-reporter-01 nil
  :tags '(:interactive)
  (let ((ucs-utils-trade-memory-for-speed nil)
        (ucs-utils-use-persistent-storage nil)
        (unicode-progress-reporter-type "Horizontal Blocks"))
    (unless (ucs-utils-char
             (cadr (assoc unicode-progress-reporter-type unicode-progress-reporter-pulse-characters))
             nil 'cdp)
      (error (concat unicode-progress-reporter-type " are not displayable")))
    (unicode-progress-reporter-setup)
    (unicode-progress-reporter-test))
  (unicode-progress-reporter-setup))

(ert-deftest unicode-progress-reporter-02 nil
  :tags '(:interactive)
  (let ((ucs-utils-trade-memory-for-speed nil)
        (ucs-utils-use-persistent-storage nil)
        (unicode-progress-reporter-type "Moons"))
    (unless (ucs-utils-char
             (cadr (assoc unicode-progress-reporter-type unicode-progress-reporter-pulse-characters))
             nil 'cdp)
      (error (concat unicode-progress-reporter-type " are not displayable")))
    (unicode-progress-reporter-setup)
    (unicode-progress-reporter-test))
  (unicode-progress-reporter-setup))

(ert-deftest unicode-progress-reporter-03 nil
  :tags '(:interactive)
  (let ((ucs-utils-trade-memory-for-speed nil)
        (ucs-utils-use-persistent-storage nil)
        (unicode-progress-reporter-type "Vertical Blocks"))
    (unless (ucs-utils-char
             (cadr (assoc unicode-progress-reporter-type unicode-progress-reporter-pulse-characters))
             nil 'cdp)
      (error (concat unicode-progress-reporter-type " are not displayable")))
    (unicode-progress-reporter-setup)
    (unicode-progress-reporter-test))
  (unicode-progress-reporter-setup))

(ert-deftest unicode-progress-reporter-04 nil
  :tags '(:interactive)
  (let ((ucs-utils-trade-memory-for-speed nil)
        (ucs-utils-use-persistent-storage nil)
        (unicode-progress-reporter-type "Vertical Counting Rods"))
    (unless (ucs-utils-char
             (cadr (assoc unicode-progress-reporter-type unicode-progress-reporter-pulse-characters))
             nil 'cdp)
      (error (concat unicode-progress-reporter-type " are not displayable")))
    (unicode-progress-reporter-setup)
    (unicode-progress-reporter-test))
  (unicode-progress-reporter-setup))

(ert-deftest unicode-progress-reporter-05 nil
  :tags '(:interactive)
  (let ((ucs-utils-trade-memory-for-speed nil)
        (ucs-utils-use-persistent-storage nil)
        (unicode-progress-reporter-type "Clocks"))
    (unless (ucs-utils-char
             (cadr (assoc unicode-progress-reporter-type unicode-progress-reporter-pulse-characters))
             nil 'cdp)
      (error (concat unicode-progress-reporter-type " are not displayable")))
    (unicode-progress-reporter-setup)
    (unicode-progress-reporter-test))
  (unicode-progress-reporter-setup))

(ert-deftest unicode-progress-reporter-06 nil
  :tags '(:interactive)
  (let ((ucs-utils-trade-memory-for-speed nil)
        (ucs-utils-use-persistent-storage nil)
        (unicode-progress-reporter-type "Ogham Letters"))
    (unless (ucs-utils-char
             (cadr (assoc unicode-progress-reporter-type unicode-progress-reporter-pulse-characters))
             nil 'cdp)
      (error (concat unicode-progress-reporter-type " are not displayable")))
    (unicode-progress-reporter-setup)
    (unicode-progress-reporter-test))
  (unicode-progress-reporter-setup))

(ert-deftest unicode-progress-reporter-07 nil
  :tags '(:interactive)
  (let ((ucs-utils-trade-memory-for-speed nil)
        (ucs-utils-use-persistent-storage nil)
        (unicode-progress-reporter-type "Horizontal Counting Rods"))
    (unless (ucs-utils-char
             (cadr (assoc unicode-progress-reporter-type unicode-progress-reporter-pulse-characters))
             nil 'cdp)
      (error (concat unicode-progress-reporter-type " are not displayable")))
    (unicode-progress-reporter-setup)
    (unicode-progress-reporter-test))
  (unicode-progress-reporter-setup))

(ert-deftest unicode-progress-reporter-08 nil
  :tags '(:interactive)
  (let ((ucs-utils-trade-memory-for-speed nil)
        (ucs-utils-use-persistent-storage nil)
        (unicode-progress-reporter-type "Triangles"))
    (unless (ucs-utils-char
             (cadr (assoc unicode-progress-reporter-type unicode-progress-reporter-pulse-characters))
             nil 'cdp)
      (error (concat unicode-progress-reporter-type " are not displayable")))
    (unicode-progress-reporter-setup)
    (unicode-progress-reporter-test))
  (unicode-progress-reporter-setup))

(ert-deftest unicode-progress-reporter-09 nil
  :tags '(:interactive)
  (let ((ucs-utils-trade-memory-for-speed nil)
        (ucs-utils-use-persistent-storage nil)
        (unicode-progress-reporter-type "ASCII"))
    (unless (ucs-utils-char
             (cadr (assoc unicode-progress-reporter-type unicode-progress-reporter-pulse-characters))
             nil 'cdp)
      (error (concat unicode-progress-reporter-type " are not displayable")))
    (unicode-progress-reporter-setup)
    (unicode-progress-reporter-test))
  (unicode-progress-reporter-setup))

;;
;; Emacs
;;
;; Local Variables:
;; indent-tabs-mode: nil
;; mangle-whitespace: t
;; require-final-newline: t
;; coding: utf-8
;; byte-compile-warnings: (not cl-functions)
;; End:
;;

;;; unicode-progress-reporter-test.el ends here
