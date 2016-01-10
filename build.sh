#!/usr/local/bin/bash
pdflatex --shell-escape uw-ethesis
bibtex uw-ethesis
pdflatex --shell-escape uw-ethesis
pdflatex --shell-escape uw-ethesis
pdflatex --shell-escape uw-ethesis

# pkill Preview
open -a Preview uw-ethesis.pdf; 
# /usr/bin/osascript -e 'tell application "Preview"' -e "activate" -e 'tell application "System Events"' -e 'keystroke "f" using {control down, command down}' -e "end tell" -e "end tell"