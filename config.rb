# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :directory_indexes

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page "/*.xml", layout: false
page "/*.json", layout: false
page "/*.txt", layout: false
page "/gallery.html", layout: "gallery"

set :build_dir, "build/thecwlzone-3.0"

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end
helpers do
  def generate_random_image
    `ls -1fA source/images/randomized`.split("\n").sample
  end
end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

configure :build do
  activate :minify_javascript
end

Haml::TempleEngine.disable_option_validator!
