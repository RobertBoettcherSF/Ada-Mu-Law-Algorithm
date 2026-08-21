# Makefile for compiling and testing the Mu-Law Ada Implementation
.PHONY: all test clean

GNAT = gnatmake
OBJ_DIR = obj
BIN_DIR = bin

all: $(BIN_DIR)/tests

$(BIN_DIR)/tests: tests.adb mu_law.adb mu_law.ads
	mkdir -p $(OBJ_DIR) $(BIN_DIR)$(GNAT) -P mu_law_project.gpr

test: $(BIN_DIR)/tests
	@echo "Running tests..."
	@$(BIN_DIR)/tests

clean:
	rm -rf $(OBJ_DIR)$(BIN_DIR)
