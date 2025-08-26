# Wrapper Makefile - delegates to config/Makefile
# This keeps the root directory clean while maintaining functionality

%:
	@$(MAKE) -f config/Makefile $@

.PHONY: all pdf xelatex clean rebuild open show help
