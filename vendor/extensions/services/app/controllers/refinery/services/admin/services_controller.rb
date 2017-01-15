module Refinery
  module Services
    module Admin
      class ServicesController < ::Refinery::AdminController

        crudify :'refinery/services/service'

        private

        # Only allow a trusted parameter "white list" through.
        def service_params
          params.require(:service).permit(:title, :description, :icon_id)
        end
      end
    end
  end
end
