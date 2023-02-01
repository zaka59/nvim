all: install

install: requirements packer copilot

requirements:
	@echo "Installing requirements"
	@brew upgrade neovim
	@pip3 install noevim
	@echo "Requirements installed"

packer:
	@echo "Installing Packer"
	@bash scripts/packer.sh
	@echo "Packer installed"

copilot:
	@echo "Installing Copilot"
	@bash scripts/copilot.sh
	@echo "Copilot installed"
