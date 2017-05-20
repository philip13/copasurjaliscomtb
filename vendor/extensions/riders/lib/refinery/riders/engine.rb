module Refinery
  module Riders
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Riders

      engine_name :refinery_riders

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "riders"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.riders_admin_riders_path }
          plugin.pathname = root
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Riders)
      end
    end
  end
end
