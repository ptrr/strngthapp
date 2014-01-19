require 'spec_helper'

describe Strength do
  describe "one_rep_max" do
    let(:max) { 100.0 }
    let(:reps) { 4.0 }

    subject { Strength.new(max, reps).max_lift.round(2) }

    it { should be 113.33 }
  end
end
