
;;; requires and setup

(when load-file-name
  (setq pcache-directory (expand-file-name "test_output/" (file-name-directory load-file-name)))
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
  (should
   (progn
     (let ((cursor-in-echo-area t)
           (ucs-utils-trade-memory-for-speed nil)
           (ucs-utils-use-persistent-storage nil)
           (unicode-progress-reporter-type "Horizontal Blocks"))
       (read-char (format "Press a key to generate a progress reporter using: %s." unicode-progress-reporter-type))
       (unless (ucs-utils-char
                (cadr (assoc unicode-progress-reporter-type unicode-progress-reporter-pulse-characters))
                nil 'cdp)
         (error (concat unicode-progress-reporter-type " are not displayable")))
       (unicode-progress-reporter-setup)
       (setq cursor-in-echo-area nil)
       (unicode-progress-reporter-test))
     (unicode-progress-reporter-setup)
     (y-or-n-p "Did that work as expected?"))))

(ert-deftest unicode-progress-reporter-02 nil
  :tags '(:interactive)
  (should
   (progn
     (let ((cursor-in-echo-area t)
           (ucs-utils-trade-memory-for-speed nil)
           (ucs-utils-use-persistent-storage nil)
           (unicode-progress-reporter-type "Moons"))
       (read-char (format "Press a key to generate a progress reporter using: %s." unicode-progress-reporter-type))
       (unless (ucs-utils-char
                (cadr (assoc unicode-progress-reporter-type unicode-progress-reporter-pulse-characters))
                nil 'cdp)
         (error (concat unicode-progress-reporter-type " are not displayable")))
       (unicode-progress-reporter-setup)
       (setq cursor-in-echo-area nil)
       (unicode-progress-reporter-test))
     (unicode-progress-reporter-setup)
     (y-or-n-p "Did that work as expected?"))))

(ert-deftest unicode-progress-reporter-03 nil
  :tags '(:interactive)
  (should
   (progn
     (let ((cursor-in-echo-area t)
           (ucs-utils-trade-memory-for-speed nil)
           (ucs-utils-use-persistent-storage nil)
           (unicode-progress-reporter-type "Vertical Blocks"))
       (read-char (format "Press a key to generate a progress reporter using: %s." unicode-progress-reporter-type))
       (unless (ucs-utils-char
                (cadr (assoc unicode-progress-reporter-type unicode-progress-reporter-pulse-characters))
                nil 'cdp)
         (error (concat unicode-progress-reporter-type " are not displayable")))
       (unicode-progress-reporter-setup)
       (setq cursor-in-echo-area nil)
       (unicode-progress-reporter-test))
     (unicode-progress-reporter-setup)
     (y-or-n-p "Did that work as expected?"))))

(ert-deftest unicode-progress-reporter-04 nil
  :tags '(:interactive)
  (should
   (progn
     (let ((cursor-in-echo-area t)
           (ucs-utils-trade-memory-for-speed nil)
           (ucs-utils-use-persistent-storage nil)
           (unicode-progress-reporter-type "Vertical Counting Rods"))
       (read-char (format "Press a key to generate a progress reporter using: %s." unicode-progress-reporter-type))
       (unless (ucs-utils-char
                (cadr (assoc unicode-progress-reporter-type unicode-progress-reporter-pulse-characters))
                nil 'cdp)
         (error (concat unicode-progress-reporter-type " are not displayable")))
       (unicode-progress-reporter-setup)
       (setq cursor-in-echo-area nil)
       (unicode-progress-reporter-test))
     (unicode-progress-reporter-setup)
     (y-or-n-p "Did that work as expected?"))))

(ert-deftest unicode-progress-reporter-05 nil
  :tags '(:interactive)
  (should
   (progn
     (let ((cursor-in-echo-area t)
           (ucs-utils-trade-memory-for-speed nil)
           (ucs-utils-use-persistent-storage nil)
           (unicode-progress-reporter-type "Clocks"))
       (read-char (format "Press a key to generate a progress reporter using: %s." unicode-progress-reporter-type))
       (unless (ucs-utils-char
                (cadr (assoc unicode-progress-reporter-type unicode-progress-reporter-pulse-characters))
                nil 'cdp)
         (error (concat unicode-progress-reporter-type " are not displayable")))
       (unicode-progress-reporter-setup)
       (setq cursor-in-echo-area nil)
       (unicode-progress-reporter-test))
     (unicode-progress-reporter-setup)
     (y-or-n-p "Did that work as expected?"))))

(ert-deftest unicode-progress-reporter-06 nil
  :tags '(:interactive)
  (should
   (progn
     (let ((cursor-in-echo-area t)
           (ucs-utils-trade-memory-for-speed nil)
           (ucs-utils-use-persistent-storage nil)
           (unicode-progress-reporter-type "Ogham Letters"))
       (read-char (format "Press a key to generate a progress reporter using: %s." unicode-progress-reporter-type))
       (unless (ucs-utils-char
                (cadr (assoc unicode-progress-reporter-type unicode-progress-reporter-pulse-characters))
                nil 'cdp)
         (error (concat unicode-progress-reporter-type " are not displayable")))
       (unicode-progress-reporter-setup)
       (setq cursor-in-echo-area nil)
       (unicode-progress-reporter-test))
     (unicode-progress-reporter-setup)
     (y-or-n-p "Did that work as expected?"))))

(ert-deftest unicode-progress-reporter-07 nil
  :tags '(:interactive)
  (should
   (progn
     (let ((cursor-in-echo-area t)
           (ucs-utils-trade-memory-for-speed nil)
           (ucs-utils-use-persistent-storage nil)
           (unicode-progress-reporter-type "Horizontal Counting Rods"))
       (read-char (format "Press a key to generate a progress reporter using: %s." unicode-progress-reporter-type))
       (unless (ucs-utils-char
                (cadr (assoc unicode-progress-reporter-type unicode-progress-reporter-pulse-characters))
                nil 'cdp)
         (error (concat unicode-progress-reporter-type " are not displayable")))
       (unicode-progress-reporter-setup)
       (setq cursor-in-echo-area nil)
       (unicode-progress-reporter-test))
     (unicode-progress-reporter-setup)
     (y-or-n-p "Did that work as expected?"))))

(ert-deftest unicode-progress-reporter-08 nil
  :tags '(:interactive)
  (should
   (progn
     (let ((cursor-in-echo-area t)
           (ucs-utils-trade-memory-for-speed nil)
           (ucs-utils-use-persistent-storage nil)
           (unicode-progress-reporter-type "Triangles"))
       (read-char (format "Press a key to generate a progress reporter using: %s." unicode-progress-reporter-type))
       (unless (ucs-utils-char
                (cadr (assoc unicode-progress-reporter-type unicode-progress-reporter-pulse-characters))
                nil 'cdp)
         (error (concat unicode-progress-reporter-type " are not displayable")))
       (unicode-progress-reporter-setup)
       (setq cursor-in-echo-area nil)
       (unicode-progress-reporter-test))
     (unicode-progress-reporter-setup)
     (y-or-n-p "Did that work as expected?"))))

(ert-deftest unicode-progress-reporter-09 nil
  :tags '(:interactive)
  (should
   (progn
     (let ((cursor-in-echo-area t)
           (ucs-utils-trade-memory-for-speed nil)
           (ucs-utils-use-persistent-storage nil)
           (unicode-progress-reporter-type "ASCII"))
       (read-char (format "Press a key to generate a progress reporter using: %s." unicode-progress-reporter-type))
       (unless (ucs-utils-char
                (cadr (assoc unicode-progress-reporter-type unicode-progress-reporter-pulse-characters))
                nil 'cdp)
         (error (concat unicode-progress-reporter-type " are not displayable")))
       (unicode-progress-reporter-setup)
       (setq cursor-in-echo-area nil)
       (unicode-progress-reporter-test))
     (unicode-progress-reporter-setup)
     (y-or-n-p "Did that work as expected?"))))

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
