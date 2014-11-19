require 'spec_helper'

describe Brood do
  Given(:brood) { Brood.new }

  context "has to_s" do
    Then { brood.to_s == ' ' }
  end
end
