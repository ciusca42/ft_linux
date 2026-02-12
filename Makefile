# .phony
SCRIPTS_DIR := ./scripts
GREEN := \033[0;32m
RED := \033[0;31m
NC := \033[0m  # No Color

# Reusable echo function
define echo_error
	@echo "\n$(RED)$(1)$(NC)"
endef

define echo_success
	@echo -e "$(GREEN)$(1)$(NC)"
endef

setup:
	@$(SCRIPTS_DIR)/mount_scripts/setup.sh || $(call echo_error,"Try to run it as root")
	@$(SCRIPTS_DIR)/user/create_user.sh || $(call echo_error,"Try to run it as root")

install:
	@./requirements/install.sh || $(call echo_error,"Try to run it as root")

all: install

.DEFAULT:
	$(call echo_error,"Command not found")
	@echo "\ttry 'make help' for more informations\n"

.PHONY: all setup install default

