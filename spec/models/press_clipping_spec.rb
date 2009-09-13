require File.dirname(__FILE__) + '/../spec_helper'

describe PressClipping do
  before(:each) do
    @press_clipping = PressClipping.new
  end

  it "should be valid" do
    @press_clipping.should be_valid
  end
end
