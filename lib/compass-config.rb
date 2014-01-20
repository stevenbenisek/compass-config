# List required gems
require "compass"

# Register extension and provide location
extension_path = File.expand_path(File.join(File.dirname(__FILE__), ".."))
Compass::Frameworks.register("compass-config", :path => extension_path)

# Custom SassScript
module Sass::Script::Functions
    def x_compass_config(property)
        property = property.value
        property = Compass.configuration.read(property)
        property = property.to_s
        return Sass::Script::String.new(property)
    end
end
