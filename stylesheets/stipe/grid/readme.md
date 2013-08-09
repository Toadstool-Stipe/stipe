#Grids
Out of the box Stipe provides a 12 and 16 column grid system that based on the original [960.gs](http://960.gs/) solution, which provides columns, gutters and nesting.


##Placeholder classes
You can get started creating twelve and sixteen column grids without placing presentational classes on your markup by applying stipes mixins. Give the following html

```html
<html>
  <head></head>
  <body>
    <nav/>
    <div class="gallery">
      <img/>
      <img/>
      <img/>
      <img/>
    </div>
  </body>
</html>
```

```sass
nav {
  @extend %grid_12of12;
  @media #{$mobile} {
    @extend %grid_4of4;
  }
}

.gallery img {
  @extend %grid_4of12;
  @media #{$mobile} {
    @extend %grid_4of4;
  }
}
```

You will get the following CSS

```css
nav, .gallery img {
  float: left;
  margin-left: 1.04167%;
  margin-right: 1.04167%;
  width: 31.25%;
}

@media screen and (max-width: 40em) {
  nav, .gallery img {
    float: left;
    margin-left: 3.125%;
    margin-right: 3.125%;
    width: 93.75%;
  }
}
```

##Building custom grid widths and nesting
If you require more customization of a given grid, use Stipe's grid mixin `@include grid($col_count)`. Whereas you are replacing `$col_count` with the number of columns you need.

When nesting grids, since Stipe uses percentages, you need to make sure to reset your context.

##Grid arguments
Additional arguments can be passed into the grid mixin to include `$grid_padding_l` `$grid_padding_r` `$grid_padding_tb` `$grid_border` `$border_place` `$grid_uom` `$col_gutter` `$grid_type` `$grid_align` `$grid_context`

* `$grid_padding_l` => adds padding LEFT, takes integer value
* `$grid_padding_r` => adds padding RIGHT, takes integer value
* `$grid_padding_tb` => adds padding TOP and BOTTOM, takes integer value
* `$grid_border` => takes integer value, adds border using `$border_color` and `$standard_border_style` configs found in `_config.scss`.
* `$border_place` => arguments are `left` and `right`. Argument will place a single border on either the left or right side of the block.
* `$grid_uom` => set to percent by default, accepts `em` as argument.
* `$col_gutter` => takes integer to adjust col gutter
* `$grid_align` => takes `center` as argument
* `$grid_context` => Adjusts column widths based on nested grid context. Necessary when calculating with percentages

Stipe uses the `box-size` CSS property, but this is not supported by IE7. By entereing values like `$grid_padding_l, $grid_padding_r, $grid_border`, Stipe will calculate a width that IE7 can use.
