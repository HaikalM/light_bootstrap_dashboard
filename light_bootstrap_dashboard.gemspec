# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'light_bootstrap_dashboard/version'

Gem::Specification.new do |spec|
  spec.name          = "light_bootstrap_dashboard"
  spec.version       = LightBootstrapDashboard::VERSION
  spec.authors       = ["Tim"]
  spec.email         = ["timshingyu@gmail.com"]

  spec.summary       = %q{Light Bootstrap Dashboard for Rails Version}
  spec.description   = %q{Light Bootstrap Dashboard for Rails Version is a rubygems. Packed with useful rails generators to generate your rails view in no time. One more thing, it's production ready, so no need to worry about the assets pipeline issues on production server anymore.}
  spec.homepage      = "https://uiready.io/items/light-bootstrap-dashboard-rails-version"

  spec.files = Dir["{app,lib}/**/*"].reject{ |f|
                  f['app/assets/javascripts/light_bootstrap_dashboard/jquery.1.10.2.js'] } +
               Dir["*.gemspec"] +
               ["README.md"]

  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 3.1"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"

  spec.post_install_message = <<-DOC
    Congratulation, Light Bootstrap Dashboard for Rails Version has been installed in your local machine.

    You can now run the following generator to install Light Bootstrap Dashboard to your rails app.

    rails generate light_bootstrap_dashboard:install
  DOC

end
