module Refinery
  module RaceResults
    class RaceResultsController < ::ApplicationController

      before_action :find_all_race_results
      before_action :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @race_result in the line below:
        present(@page)
      end

      def show
        @race_result = RaceResult.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @race_result in the line below:
        present(@page)
      end

    protected

      def find_all_race_results
        @race_results = RaceResult.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/race_results").first
      end

    end
  end
end
