#Stipe's predefined web fonts

Stipe comes pre-installed with icon font libraries `zocial` and `font-awesome`. 

To activate these libraries in your Toadstool project, simple review the instructions in the [_web_fonts.scss](http://goo.gl/TCycJ) file. 

Use of a icon font is pretty straight forward. Simply extend the silent placeholder like so ...

```scss
.bookmark {
  @extend %icon-bookmark;
}
```

Stipe's pre-set values will set the appropriate font family and the character needed. 

Make sure that the font fmailies are loaded in your public folder like the example in [Toadstool](http://goo.gl/ZmAuO). 