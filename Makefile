all: README.html

%.html: %.md
	pandoc -s -S --ascii $< -o $@
