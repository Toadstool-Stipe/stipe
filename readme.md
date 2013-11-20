# Stipe Compass Extension
Stipe is the core of the Toadstool style guide framework, providing of mixins, placeholder classes, and sensible defaults that give Toadstool that 'instant on' experience.

[Stipe](https://rubygems.org/gems/stipe)

## To install
`gem install stipe`

## To use
To use the Stipe gem, using Bundler `gem 'stipe'`

Stipe is a Compass extension, so Compass is a dependency. You will need to include `require 'stipe'` in your config.rb file.

# Stipe Changelog


### 0.0.6.4
* Remove `max-width` from desktop @media query.
* Remove `:link` pseudo-selector from `<a>` default styling in typography.
* Typography clean up and bug fixes.
* (Slightly) better grid documentation.
* Clean up READMEs.

### 0.0.6.3
* Fix `-moz-placeholder` pseudo-selector syntax. Apparently requires two colons.

### 0.0.6.2
* Make `push`/`pull` grid mixins accept context arguments. Useful for nested, percentage-based grids.

### 0.0.6.1
* Tweak `the_grid` to work with 24 column default setting.

### 0.0.6.0
* Update `@clearfix` to remove redundant CSS output.
* Add some additional @media query-scoped grid placeholders.
* Update gem homepage.

### 0.0.5.9
* Remove uneccessary instances of the box-sizing mixin, mainly in the push/pull mixins.
* Adde _legacy_extends.scss file to stipe/grid. This is an optional @import, not included in the Stipe manifest. It restores some legacy placeholders. Consider it deprecated.

### 0.0.5.8
* Move grid extends to load last in style.scss manifest - when using the extended grid solution, this will move all your media queries to the end of the stylesheet.
* Remove support for Font-Awesome and Zocial ico-fonts.
* Replace with new and improved "build your own" ico-font solution.
* General bug fixes.

### 0.0.5.7.9
* BUG FIX - Addressed duplicate output for 12 col and 24 col nested placeholder selectors.

### 0.0.5.7.8
* ALERT!!!! Stipe's gradient support is now deprecated. This code will be deleted in future releases. Please make sure to update all gradients to use Compass' `@include background-image` mixin.
* Grids have been updated to support a larger array of placeholder classes for both 12 col and 24 col grid layouts.
* New experimental support for placeholder selectors and nested grids.

### 0.0.5.7.7
* Update grid - move box-sizing from grid scope to global attribute.
* Deprecate Stipe's grid solution in favor of using Compass.

### 0.0.5.7.6
* Restore `-ms-linear-gradient(...)` in `linear_gradient_w3c()` mixin. Because Jed has no idea what he's doing.

### 0.0.5.7.5
* Replace `-ms-linear-gradient(...)` with `linear-gradient(..)` in `linear_gradient_w3c()` mixin.

### 0.0.5.7.4
* Update `_forms.scss` to support legacy versions of extends.

### 0.0.5.7.3
* Remove sass-globbing dependency in Stipe itself.

### 0.0.5.7.2
* Commonly named color values (`aquamarine`, `white`, `crimson`, etc) need to be put in `' '` when processed through Rails.

### 0.0.5.7.1
* Added `!optional` flag to Toadstool generated extended placeholder selectors to address backwards compatibility.
* If Sass still pukes on not finding the placeholders to extend, either the name was updated or simply add `!optional` to the end of the extend declaration.
	* For the most part this would be restricted to `_buttons.scss` and `_forms.scss`.

### 0.0.5.7
* Over-haul color palette CSS.
* Update forms extends to include `stipe_` in the name to increase visibility of where code is coming from in Toadstool.
* Add UI for `contenteditable` new functionality.
* Old button lib is dead.
* All new buttons is alive.
* Updates to `/stipe/stylesheets/stipe/toadstool/ui_patterns/_color_grid.scss`.
	* Add new `extend_color_loop` mixin.
	* Dynamically looping through list of OOCSS names to create color block classes.
*  New `extend_color_loop` mixins.
	* Add to `/stipe/stylesheets/stipe/toadstool/ui_patterns/_color_grid.scss`.
	* All extends generated in memory from lists of objects.
