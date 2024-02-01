Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
scoop update
scoop bucket add extras
scoop bucket add games
scoop install bat fd fzf grep lazygit nodejs-lts pnpm python ripgrep starship wget