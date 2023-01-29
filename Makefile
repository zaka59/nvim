all:


packer:
	@echo "Installing Packer"
	@git clone --depth 1 https://github.com/wbthomason/packer.nvim \
	~/.local/share/nvim/site/pack/packer/start/packer.nvim
	@echo "Packer installed"

gitgutter:
	@echo "Installing Gitgutter"
	@mkdir -p ~/.config/nvim/pack/airblade/start
	@cd ~/.config/nvim/pack/airblade/start
	@git clone https://github.com/airblade/vim-gitgutter.git
	@nvim -u NONE -c "helptags vim-gitgutter/doc" -c q
	@mkdir -p ~/.config/nvim/pack/airblade/start
	@echo "Gitgutter installed"

copilot:
	@echo "Installing Copilot"
	@git clone https://github.com/github/copilot.vim.git \
	~/.config/nvim/pack/github/start/copilot.vim
	@echo "Copilot installed"
