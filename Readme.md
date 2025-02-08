## Edwige Cyffers' website

To update the content, see the content folder

To update the theme, see the other folders. Try as much as possible to copy the file that you want to modify from the theme folder into a similar arborecence in the main repo.

`git clone --recurse-submodules -j8 blablabla`

To clone the website on a new computer including the theme. You might need to install tailwind's cli (version 3), zola, and just to have a similar environment.

Some `just` command were added into the repo for simple modifications.

* `just build` to rebuild the public repository
* `just serve` to live-watch modifications
* `just deploy` to deploy to the real server

### Changing colors

To change colors, see the `tailwind.config.js` file.
