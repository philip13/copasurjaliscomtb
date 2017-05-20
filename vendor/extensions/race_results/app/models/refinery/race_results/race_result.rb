module Refinery
  module RaceResults
    class RaceResult < Refinery::Core::BaseModel
      self.table_name = 'refinery_race_results'


      # def title was created automatically because you didn't specify a string field
      # when you ran the refinery:engine generator. <3 <3 Refinery CMS.
      def title
        "Override def title in vendor/extensions/race_results/app/models/refinery/race_results/race_result.rb"
      end

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

    end
  end
end
