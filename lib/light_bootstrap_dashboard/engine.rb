module LightBootstrapDashboard
  class Engine < ::Rails::Engine
    initializer 'light_bootstrap_dashboard.setup' do |app|
      app.config.assets.precompile += Dir.glob(config.root + 'app/assets/images/light_bootstrap_dashboard/**/*').select{ |f| File.file? f }.map { |m| "light_bootstrap_dashboard/" +  File.path(m).split("light_bootstrap_dashboard/").last }
      app.config.assets.precompile += %w( light_bootstrap_dashboard/pe-icon-7-stroke.css )
      app.config.assets.precompile += %w( light_bootstrap_dashboard/demo.css )
      app.config.assets.precompile += %w( light_bootstrap_dashboard/demo.js )
    end

    initializer 'light_bootstrap_dashboard.sass' do |app|
      # Set the sass load paths
      app.config.sass.load_paths << File.join(config.root, "lib", "sass")

      # Set the add light_bootstrap_dashboard/lib/sass to assets path
      app.config.assets.paths << File.join(config.root, "lib", "sass")
    end
  end
end
