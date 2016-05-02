require "spec_helper"

#load my files
$:.unshift(".")
require "lib/location" 

describe Location do

  let(:latitude) { 38.911268 }
  let(:longitude) { -77.444243 }
  let(:air_space) { Location.new(:latitude => 38.911268, 
                                 :longitude => -77.444243) }




  describe "Initialize Action" do

    it "set logtitude and longitude properly" do

      #latitude = 38.911268
      #longitude = -77.44424
      #my_loc = Location.new(latitude, longitude)

      my_loc = Location.new(latitude: 38.911268 , longitude: -77.44424)

      expect(my_loc.latitude).to eq(38.911268)
      expect(my_loc.longitude).to eq(-77.44424)
      
    end
    
  end

  # with error!!
  #describe "#initialize" do
  #  subject { air_space }
  #  its (:latitude) { should == latitude }
  #  its (:longitude) { should == longitude }
  #end

  describe "#near?" do

    # The context block is a grouping mechanism for associating tests.
    context "when within the specified radius with more verbose" do
      subject { air_space.near?(latitude, longitude, 1) }
        it { should be true }
    end

    context "when within the specified radius" do
      subject { air_space }
      it { should be_near(latitude, longitude, 1) }
    end



    context "when outside the specified radius" do
      subject { air_space }
      it { should_not be_near(latitude * 10, longitude * 10, 1) }      
    end

  end

  describe "#sssimple_near?" do

    # The context block is a grouping mechanism for associating tests.
    context "when within the specified radius with more verbose" do
      subject { air_space.simple_near?(latitude, longitude, 1) }
        it { should be true }
    end

    context "when within the specified radius" do
      subject { air_space }
      it { should be_simple_near(latitude, longitude, 1) }
    end



    context "when outside the specified radius" do
      subject { air_space }
      it { should_not be_simple_near(latitude * 10, longitude * 10, 1) }      
    end

    context "Another way when outside the specified radius" do
      subject { air_space.simple_near?(latitude * 10, longitude * 10, 1) }
      it { should_not be true }      
    end


    context "when a negative value is passed" do
      
      it "should raise an exception" do
          expect { air_space.simple_near?(latitude, longitude, -1) }.to raise_error(ArgumentError)
      end
    end

  end



















  
end


