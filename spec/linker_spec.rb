require 'curb'
require 'pry'
require './lib/linker.rb'
# $LOAD_PATH.unshift File.expand_path( "../lib", __FILE__ )

describe Linker do
	
  	let(:link_obj) { described_class.new "https://github.com/" }

	it "is available as the described_class" do 
		link_obj.class.should eq(Linker)
	end

	context "is alive" do 
		it "should know if it's .alive" do 
			expect(link_obj.alive?).to eq(:active)
		end

		it "should identify ./spec/ within repo" do 
			pending ""
		end 
	end
end