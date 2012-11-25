#General typography

Much of your Typography has already been addressed with Toadstool. Simply use Toadstool's config file to address your '$font_size, $heading_1 - 6, $small_point_size and $large_point_size'. As well designate your `$primary_font_family, $secondary_font_family and $heading_font_family` variables.

It should be noted that Toadstool DOES NOT USE PIXELS for any values. At any time you need use a width/height/size value, use Stipe's [em function](http://goo.gl/rK2Ae), for example: `font-size: em(12);`.

Stipe's em function takes two arguments, `$target` and `$context`. By default `$context` is set to the `$font-size` you set in the your [config.scss](http://goo.gl/PqQSK) file. The function will take the value of the argument, devide it by the context and convert that to an em vlaue for the final output.

But why the second argument? The gotcha of ems is it's parental relationship. If at any time you redefined the parent font size, you need to redefine the context of this function. For example, if the partent was changed to `font-size: em(18);` and you wanted a header inside to be 24px, by resetting the context you will get the correct em value, like so: `font-size: em(24, 18);`.

Stipe also has a rem funciton that works the same way, example: `font-size: rem(24);` whereas this function takes the initial argument and devides by the font-size set in the `html` selector. Read more on rem from [snook.ca](http://goo.gl/85fhM), but use with caution, no support for IE8 and below.