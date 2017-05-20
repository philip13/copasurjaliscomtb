require 'spec_helper'

module Refinery
  module RaceResults
    describe RaceResult do
      describe "validations", type: :model do
        subject do
          FactoryGirl.create(:race_result)
        end

        it { should be_valid }
        its(:errors) { should be_empty }
      end
    end
  end
end
