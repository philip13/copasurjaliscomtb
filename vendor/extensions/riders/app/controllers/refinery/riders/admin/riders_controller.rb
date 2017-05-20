module Refinery
  module Riders
    module Admin
      class RidersController < ::Refinery::AdminController

        crudify :'refinery/riders/rider',
                :title_attribute => 'first_name'

        private

        # Only allow a trusted parameter "white list" through.
        def rider_params
          params.require(:rider).permit(:first_name, :last_name, :mother_surname, :birdth_date, :address, :city, :state, :phone_number, :blood_type, :rider_number, :photo_id)
        end
      end
    end
  end
end
