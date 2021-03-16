# My `.vimrc`
## About
This also includes some other stuff. Just some steps for me to follow when I eventually forget all of this setup I've done. 
## Instructions for future me
* This is for vim8.
* Remember to install `vim-plug`. You can get that [here](https://github.com/junegunn/vim-plug). 
* Then run `:PlugInstall`.
* Run `:CocConfig` and copypaste `coc-settings.json` from this repo into that buffer
* You probably have to `stack install` some things from [here](http://marco-lopes.com/articles/Vim-and-Haskell-in-2019/) if you're doing Haskell dev.
* For `cpp` support: `sudo apt install ccls` 
* If you wanna use the `jedi-language-server` stuff with python, you're gonna need to `pip3 install -U jedi-language-server`, or check the latest steps from [the jls repo](https://github.com/pappasam/jedi-language-server).
