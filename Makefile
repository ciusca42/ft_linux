# .phony
SCRIPTS_DIR := scripts/
GREEN := \033[0;32m
RED := \033[0;31m
NC := \033[0m  # No Color


define echo_error
	@echo "\n$(RED)$(1)$(NC)"
endef

define echo_success
	@echo -e "$(GREEN)$(1)$(NC)"
endef

setup:
	@./$(SCRIPTS_DIR)/start.sh setup

install:
	@./$(SCRIPTS_DIR)/start.sh install

all: install setup


.DEFAULT:
	$(call echo_error,"Command not found")
	@echo "\ttry 'make help' for more informations\n"

.PHONY: all setup install default

