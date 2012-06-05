require 'compass'
extension_path = File.expand_path(File.join(File.dirname(__FILE__), ".."))

base_directory  = File.join(File.dirname(__FILE__), '..')
stylesheets_dir = File.join(base_directory, 'stylesheets')
Compass::Frameworks.register('stipe', :path => extension_path)



# puts stylesheets_dir