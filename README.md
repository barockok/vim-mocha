# mocha.vim


## Installation

Recommended installation with [vundle](https://github.com/gmarik/vundle):

```vim
Bundle 'barock/mocha-rspec'
```

If using zsh on OS X it may be necessary to move `/etc/zshenv` to `/etc/zshrc`.

## Configuration

### Key mappings

Add your preferred key mappings to your `.vimrc` file.

```vim
" mocha.vim mappings
map <Leader>t :call RunCurrentMochaSpecFile()<CR>
map <Leader>s :call RunNearestMochaSpec()<CR>
map <Leader>l :call RunLastMochaSpec()<CR>
map <Leader>a :call RunAllMochaSpecs()<CR>
```

### Custom command

Overwrite the `g:mocha_command` variable to execute a custom command.

Example:

```vim
let g:mocha_command = "!mocha {mocha_spec}"
```


Credits
-------
[![Veritrans](https://raw.githubusercontent.com/barock19/logo-collection/master/veritrans-small.png)](https://www.veritrans.co.id "Veritrans Indonesia")

for providing cool workspace and coffee machine :)

![thoughtbot](http://thoughtbot.com/images/tm/logo.png)

for create and maintain [vim-rspec](https://github.com/thoughtbot/vim-rspec)

Freaking Awesome friends from NEO ( [@gabehollombe](https://github.com/gabehollombe) and [@alanyjw](https://github.com/alanyjw) )

[![Gabe](https://avatars0.githubusercontent.com/u/28283?v=2&s=60)] (https://github.com/gabehollombe "Gabe Hollombe") [![Alan](https://avatars2.githubusercontent.com/u/578958?v=2&s=60)](https://github.com/alanyjw "Alan Yeo")

_*"Badass"*_ team mates ( [@panggi](https://github.com/panggi) and [@drabiter](https://github.com/drabiter) )

[![panggi](https://avatars1.githubusercontent.com/u/249637?v=2&s=60)](https://github.com/panggi "Panggi") [![drabiter](https://avatars0.githubusercontent.com/u/2654586?v=2&s=60)](https://github.com/drabiter "drabiter")

## License
undescribed yet :)
