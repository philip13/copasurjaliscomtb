module Refinery
  module RaceResults
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::RaceResults

      engine_name :refinery_race_results

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "race_results"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.race_results_admin_race_results_path }
          plugin.pathname = root
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::RaceResults)
      end
    end
  end
end
