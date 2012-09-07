Overview
========
Emacs progress reporter with fancy characters.

unicode-progress-reporter
-------------------------
This is a trivial modification to Emacs' built-in progress
reporter to display spinners using unicode characters.

To use unicode-progress-reporter, place the
unicode-progress-reporter.el library somewhere Emacs can
find it, and add the following to your ~/.emacs file:

	(require 'unicode-progress-reporter)
	(unicode-progress-reporter-setup)

See Also
--------
	M-x customize-group RET unicode-progress-reporter RET

	(unicode-progress-reporter-test)

Notes
-----
Redefines `progress-reporter-do-update`.

Alters private variable `progress-reporter--pulse-characters`.

Compatibility and Requirements
------------------------------
Requires GNU Emacs version 24.1 or above

Requires [ucs-utils.el](http://github.com/rolandwalker/ucs-utils)

Uses if present: [unicode-fonts.el](http://github.com/rolandwalker/unicode-fonts)
