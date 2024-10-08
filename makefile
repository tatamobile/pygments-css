# make sure you already ran pip install -r requirements.txt
#
# syntax
# pygmentize -S <style> -f <formatter> [-a <arg>] [-O <options>] [-P <option=value>]
# (pygmentize documentation is pretty scattered and confusing, but the "-a" will add other classes
# to the output)


STYLES = autumn
STYLES += borland
STYLES += coffee
STYLES += colorful
STYLES += default
STYLES += emacs
STYLES += friendly
STYLES += fruity
STYLES += github-dark
STYLES += gruvbox-dark
STYLES += gruvbox-light
STYLES += manni
STYLES += monokai
STYLES += material
STYLES += murphy
STYLES += native
STYLES += pastie
STYLES += perldoc
STYLES += stata-dark
STYLES += stata-light
STYLES += tango
STYLES += trac
STYLES += vim
STYLES += vs
STYLES += xcode
STYLES += zenburn

# a recursively-expanding variable, so that its value contains an actual function call to be
# re-expanded under the control of foreach
gen_html = pygmentize -S $(style) -f html -a .highlight > $(style).css;

cssfiles:
	@$(foreach style, $(STYLES), $(gen_html))
