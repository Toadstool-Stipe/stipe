#Stipe's grid solution
While there are a number of other really awesome grid solutions out there, I always find myself customizing their code to meet my personal needs. You will see these needs described in the supported arguments below.

##Grid use definition
To use grids in Toadstool, Stipe comes with some awesome Mixins for easy creation of custom grids as well as commonly used silent classes.

Stipe's grid system is based on the original 960.gs solution. Whereas there are concepts like columns, gutters and nesting. For the most part when framing a UI, simply extend already pre-defned [silent classes](http://goo.gl/W0QlA) like `@extend %grid_4`. These pre-formatted silent classes already come with additional support for mobile devices. 

If you require more customization of a given grid, use `@include grid($col_count)` whareas you are replacing `$col_count` with the number of colums you need. 

For nested grids, Stipe supports 'alpha' and 'omega' concepts. For added spice, if you want to remove both margins, 'alphaomega' works too. Example `@include grid(5, alpha)`.

Since Stipe's grid is pure math, you can pass in floating point numbers as well. Example, if using `@include grid(12, alphaomega)` this will remove the margin on the outside of the grid, but will not be 100% across. By adding a floating point `@include grid(12.25, alphaomega)` this will address the missing space.

##Grid arguments
Additional arguments can be passed into the grid mixin to include `$grid_padding_l` `$grid_padding_r` `$grid_padding_tb` `$grid_border` `$border_place` `$grid_uom` `$col_gutter` `$grid_type` `$grid_align` `$grid_context`

* `$grid_padding_l` => adds padding LEFT, takes intager value
* `$grid_padding_r` => adds padding RIGHT, takes intager value
* `$grid_padding_tb` => adds padding TOP and BOTTOM, takes intager value
* `$grid_border` => takes integer value, adds border using `$border_color` and `$standard_border_style` configs found in `_config.scss`.
* `$border_place` => arguments are `left` and `right`. Argument will place a single border on either the left or right side of the block.
* `$grid_uom` => set to percent by default, accepts `em` as argument.
* `$col_gutter` => takes integer to adjust col gutter
* `$grid_type` => set to 12 col by default, allows for on-the-fly adjustment to grid type <b>Feature us currently inoperable</b>
* `$grid_align` => takes `center` as argument
* `$grid_context` => Adjusts column widths based on nested grid context. Necessary when calcuclating with percentages
			
Stipe uses the `box-size` CSS property, but this is not supported by IE7. By entereing values like `$grid_padding_l, $grid_padding_r, $grid_border`, Stipe will calculate a width that IE7 can use.