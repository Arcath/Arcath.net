# Moasic Provided Modules
require 'mosaic/modules/static' # Static Content Handling
require 'mosaic/modules/info' # Info Page (Comment out in production)
require 'mosaic/modules/sass' # SASS Middleware needs (sass in your Gemfile)

# Require all modules in app/modules
Dir.glob(Mosaic.root + '/app/modules/*', &method(:require))