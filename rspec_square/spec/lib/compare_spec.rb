require "spec_helper"

#load my files
$:.unshift(".")
require "lib/location"

describe "Equal" do
    let(:address) { "123 Main Street" }

    subject { "123 Main Street" }

    it { should eq '123 Main Street' }
    it { should == "123 Main Street" }
    it { should_not == "789 Any Circle" }

    it { should_not be(address) } # object equality
    it { should_not equal(address) } # object equality too

    it { should eql(address) }
    it { should == address }

    it "also compare in this way using expect" do

      address_b = "123 Main Street" 
      expect(address_b).to eq '123 Main Street'
      expect(address_b).to eql '123 Main Street'
      expect(address_b).not_to eql '123456 Main Street'
      
    end

end


describe "Comparisons" do
  subject { 42 }
  it { should be > 41 }
  it { should be >= 42 }
  it { should be <= 42 }
  it { should be < 43 }
end


describe "Floating Comparison" do
  subject { 3.141_592_653_5 }

  it { should be_within(0.000_2).of(3.141_590) }
end


describe "Regular Expression Comparison" do
  subject { "this is a block of text" }

  it { should match(/text$/) }
  it { should =~ /\bblock\b/ }
end


describe "Boolean" do
  subject { "non-nil is true" }

  #it { should be true }
  it { should_not be false }

  it "a str is not false" do
    expect(2 == 2).to be true
  end
end


#RSpec performs some magic by dynamically creating matchers for any methods on a class that either begin with the word has or end with a question mark. These dynamically created methods are named have_method_name or be_method_name respectively and are called predicates:

describe "Predicate" do
  subject { { :a => 1, :b => 2 } }

  it { should have_key(:a) } # has_key?(:a)
  it { should_not be_empty } # empty?
end



describe "Collections" do
  subject { ["text one", "text two"] }

  it { should include "text two" }
  #its (:first) { should include "ext" }
end



describe "Class" do
  subject { 42 }

  it { should be_instance_of Fixnum }
  it { should be_kind_of Integer } # Fixnum > Integer
end


describe "Contract Validation" do
  subject { Location.new }
  it { should respond_to :near? }
end



describe "Throws" do
 subject { Proc.new { throw :some_symbol, "x" } }

 it "should throw some_symbol" do
   expect { subject.call }.to throw_symbol
   expect { subject.call }.to throw_symbol(:some_symbol)
   expect { subject.call }.to throw_symbol(:some_symbol, "x")
 end
end



describe "Errors" do
  subject { Proc.new { raise RuntimeError.new("x") } }

  it "should raise an exception" do
    expect { subject.call }.to raise_error
    expect { subject.call }.to raise_error(RuntimeError)
    expect { subject.call }.to raise_error(RuntimeError, 'x')
    expect { subject.call }.to raise_error('x')
  end
end 