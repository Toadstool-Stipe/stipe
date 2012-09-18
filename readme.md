#Stipe Compass Extension
Stipe is the life blood of the Toadstool style guide framework. Consisting of a series of mixins, extends and defaults that give Toadstool that 'instant on' experience. 

[Stipe](https://rubygems.org/gems/stipe)

##To install
`gem install stipe`

##To use 
To use the Stipe gem, using Bundler `gem 'stipe'`

Stipe is a Compass Extension, so Compass is set as a depdency. You will need to include `require 'stipe'` in your config.rb file.

##Sass / Compass
**(BLEEDING EDGE ALERT)** Toadstool is using ``3.2.0.alpha.*``
For [reasons explained](/Anotheruiguy/toadstool/blob/master/doc-src/exploited-bug.md) please continue using the alpha gem and upgrading to Sass 3.2 will break Toadstool and Stipe. 

# Stipe Changelog
## 0.0.3.8
* Addressed bugs with new Flexbox spec ... yeah, I did it wrong ;(

## 0.0.3.7
* Updates to Toadstool nav and grid display for legacy browsers
* Updates to flexbox to support legacy and new based on current support

## 0.0.3.5
* Updated code blocks to be 100% of view versus two columns by default

## 0.0.3.4
* Updated default text to have text-adjust set to none.

## 0.0.3.3
* Updates to grid soluiton for legacy browser support

## 0.0.3.2
* Updates to how default color extends are created in `toadstool.css`
** Created new `readme.md` in Stipe's color directory
* Modifications to css for Toadstool's style guide look and feel. Addressed bugs with styles stomping on generic tags in prototype views

## 0.0.2.8/0.0.2.9
* Updated Toadstool Sass to use better named spaced class for main content block. 
** Changed .main_content to .toadstool_main_contnet

## 0.0.2.7
* Sass and UI work related to default form views

## 0.0.2.6
* Created color views in Toadstool
* Created remaining semantic color variables silent classes
* Updated Toadstool `_design / _ui_manifest.scss` 

