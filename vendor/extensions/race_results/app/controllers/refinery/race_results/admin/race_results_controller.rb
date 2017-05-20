module Refinery
  module RaceResults
    module Admin
      class RaceResultsController < ::Refinery::AdminController

        crudify :'refinery/race_results/race_result'

        private

        # Only allow a trusted parameter "white list" through.
        def race_result_params
          params.require(:race_result).permit(:rider_id, :event_id, :category_id, :rider_number, :number_place)
        end
      end
    end
  end
end
