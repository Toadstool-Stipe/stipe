#Stipe Compass Extension
Stipe is the life blood of the Toadstool style guide framework. Consisting of a series of mixins, extends and defaults that give Toadstool that 'instant on' experience.

[Stipe](https://rubygems.org/gems/stipe)

##To install
`gem install stipe`

##To use
To use the Stipe gem, using Bundler `gem 'stipe'`

Stipe is a Compass Extension, so Compass is a dependency. You will need to include `require 'stipe'` in your config.rb file.

# Stipe Changelog
###0.0.5.8(roadmap)
`toadstool branch: 0_1_1 / stipe branch: 0_0_5_8`
* BUG FIX
  * nth-child buttons: need to remove the left margin for mobile breakpoint

###0.0.5.7.6
* Update grid - move box-sizing from grid scope to global attribute
* Deprecate Stipe's grid solution in favor of using Compass

###0.0.5.7.6
* Restore `-ms-linear-gradient(...)` in `linear_gradient_w3c()` mixin. Because Jed has no idea what he's doing.

###0.0.5.7.5
* Replaced `-ms-linear-gradient(...)` with `linear-gradient(..)` in `linear_gradient_w3c()` mixin.

###0.0.5.7.4
* Updated `_forms.scss` to support legacy versions of extends

###0.0.5.7.3
* Removed sass-globbing dependency in stipe itself

###0.0.5.7.2
* Commonly named color values (aquamarine, white, Crimson, etc) need to be put in `' '` when processed through Rails

###0.0.5.7.1
* Added `!optional` flag to Toadstool generated extended placeholder selectors to address backwards compatibility.
* If Sass still pukes on not finding the placeholders to extend, either the name was updated or simple add `!optional` to the end of the extend declaration.
	* For the most part this would be restricted to `_buttons.scss` and `_forms.scss`

###0.0.5.7
* Over-hauled color palette CSS
* Updated forms extends to include `stipe_` in the name to increase visibility of where code is coming from in Toadstool
* Added UI for `contenteditable` new functionality
* Old button lib is dead
* All new buttons is alive
* Updates to `/stipe/stylesheets/stipe/toadstool/ui_patterns/_color_grid.scss`
	* Added new `extend_color_loop` mixin
	* Dynamically looping through list of OOCSS names to create color block classes
*  New `extend_color_loop` mixin
	* Added to `/stipe/stylesheets/stipe/toadstool/ui_patterns/_color_grid.scss`
	* All extends generated in memory from lists of objects

###0.0.5.5
* Fixed order of `@imports` in `_manifest.scss`

###0.0.5.4
* Removed Google Font from Toadstool

###0.0.5.3
* Added new feature for hidpi image management

###0.0.5.2
* UI adjustments to `color_palettes` view

###0.0.5.1
* Adding new configutation support for form UI

###0.0.5.0
* Updated stipe manifest to allow for single import
