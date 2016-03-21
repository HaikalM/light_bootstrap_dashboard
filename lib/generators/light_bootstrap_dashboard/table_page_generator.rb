require "generators/light_bootstrap_dashboard/page_generator"

module LightBootstrapDashboard
  module Generators
    class TablePageGenerator < PageGenerator
      view_name "table_page"
      source_root File.expand_path("../templates", __FILE__)

      def set_layout
        inject_into_class "app/controllers/#{name}_controller.rb", "#{name.titleize}Controller".constantize, "  layout '_base'\n"
      end

    end
  end
end
