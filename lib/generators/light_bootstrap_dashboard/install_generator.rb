module LightBootstrapDashboard
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      desc "Install Light Bootstrap Dashboard in your rails application."

      def copy_layouts
        layouts_path = "app/views/layouts"
        %w( _base ).each do |name|
          copy_file "layouts/#{name}.html.erb", "#{layouts_path}/#{name}.html.erb"
        end
      end

      def copy_stylesheet
        copy_file "light_bootstrap_dashboard.css", "app/assets/stylesheets/light_bootstrap_dashboard.css"
      end

      def copy_javascript
        copy_file "light_bootstrap_dashboard.js", "app/assets/javascripts/light_bootstrap_dashboard.js"
      end

      def require_light_bootstrap_dashboard_stylesheet
        file = "app/assets/stylesheets/application.css"

        if File.file?(file)
          inject_into_file file, "*= require light_bootstrap_dashboard\n", { :before => "*= require_tree ." }
        else
          copy_file "application.css", file
        end
      end

      def require_light_bootstrap_dashboard_javascript
        file = "app/assets/javascripts/application.js"

        if File.file?(file)
          inject_into_file file, "\n//= require light_bootstrap_dashboard", { :after => "//= require jquery_ujs" }
        else
          copy_file "application.js", file
        end
      end

      def show_readme
        readme "README" if behavior == :invoke
      end
    end
  end
end
