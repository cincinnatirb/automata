require 'spec_helper'

describe Brood do
  Given(:brood) { Brood.new }

  context "has to_s" do
    Then { brood.to_s == "." }
  end

  context "diff brood" do
    Given(:brood2) { Brood.new("x") }
    Then { brood2.to_s == "x" }
  end
end
