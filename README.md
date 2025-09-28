<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Vimlogo.svg/1022px-Vimlogo.svg.png" alt="VIM logo" style="height: 200px;"/>

# nicolasdiazoff's Neovim Setup

Minimalist, portable, and modern Neovim configuration for developers who want a fast and productive workflow.

---

## About

This repository contains my personal Neovim configuration, designed to be simple, easy to maintain, and portable across different systems (including servers). I use Neovim daily for programming, especially in JavaScript/TypeScript and web development, but the setup is flexible for other languages as well.

Keeping your Neovim setup in a Git repository allows you to:

- Track and roll back changes
- Experiment with new settings safely
- Quickly set up your environment on any machine
- Share your workflow with others

## Requirements

- **Neovim** (recommended: v0.5+)
- **Git**
- **Node.js** (for plugins like coc.nvim and vim-prettier)
- **npm** or **yarn**
- **vim-plug** (plugin manager)

## Installation

1. **Clone this repository:**

   ```sh
   git clone https://github.com/nicolasdiazoff/vimrc.git ~/.config/nvim
   ```

2. **Install vim-plug (if not already installed):**

   ```sh
   curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   ```

3. **Open Neovim and install plugins:**

   ```vim
   :PlugInstall
   ```

4. **Install Node.js dependencies for plugins:**

   ```sh
   cd ~/.config/nvim
   npm install
   # or
   yarn install
   ```

5. **(Optional) Install Prettier and ESLint globally:**

   ```sh
   npm install -g prettier eslint
   ```

## Features

- Minimalist and fast startup
- Modern completion with [coc.nvim](https://github.com/neoclide/coc.nvim)
- Prettier integration for auto-formatting
- ESLint integration for linting
- Telescope for fuzzy finding
- NERDTree for file navigation
- Lightline status bar
- Useful mappings for productivity

## Prettier

Prettier is integrated via [vim-prettier](https://github.com/prettier/vim-prettier). To format your code:

- **Manual:** Run `:Prettier` or `:PrettierAsync` in Neovim.
- **Auto-format on save:** Add this to your `init.vim` or `utils/maps.vim`:

  ```vim
  autocmd BufWritePre *.js,*.ts,*.jsx,*.tsx,*.json,*.css,*.md,*.html PrettierAsync
  ```

## Disclaimer

This is my personal Neovim setup and is opinionated. Feel free to use it as a starting point for your own configuration. I am not responsible for any issues or data loss caused by using this setup.

---

If you have suggestions or improvements, feel free to open an issue or pull request!
