[![Build Status](https://secure.travis-ci.org/rolandwalker/unicode-progress-reporter.png?branch=master)](http://travis-ci.org/rolandwalker/unicode-progress-reporter)

# Overview

Emacs progress reporter with fancy characters.

## Quickstart

```elisp
(require 'unicode-progress-reporter)
 
(unicode-progress-reporter-setup)
 
;; to see a demo
(unicode-progress-reporter-test)
```

## Explanation

This is a trivial modification to Emacs' built-in progress
reporter to display spinners using Unicode characters.

To use unicode-progress-reporter, place the
unicode-progress-reporter.el library somewhere Emacs can
find it, and add the following to your ~/.emacs file:

```elisp
(require 'unicode-progress-reporter)
(unicode-progress-reporter-setup)
```

## See Also

* <kbd>M-x</kbd> <kbd>customize-group</kbd> <kbd>RET</kbd> <kbd>unicode-progress-reporter</kbd> <kbd>RET</kbd>

## Notes

Redefines `progress-reporter-do-update`.

Alters private variable `progress-reporter--pulse-characters`.

## Compatibility and Requirements

	GNU Emacs version 24.4-devel     : yes, at the time of writing
	GNU Emacs version 24.3           : yes
	GNU Emacs version 23.3 and lower : no

Requires [ucs-utils.el](http://github.com/rolandwalker/ucs-utils)

Uses if present: [unicode-fonts.el](http://github.com/rolandwalker/unicode-fonts)
