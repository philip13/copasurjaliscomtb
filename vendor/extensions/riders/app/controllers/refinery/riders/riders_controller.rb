module Refinery
  module Riders
    class RidersController < ::ApplicationController

      before_action :find_all_riders
      before_action :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @rider in the line below:
        present(@page)
      end

      def show
        @rider = Rider.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @rider in the line below:
        present(@page)
      end

    protected

      def find_all_riders
        @riders = Rider.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/riders").first
      end

    end
  end
end
