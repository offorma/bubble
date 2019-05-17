require 'rspec'
require "./eneumerable"

describe Enumerable do 
 array = [1,2,3]
   describe '#my_each' do 
      it 'goes through the array and returns same nil' do
         expect(array.my_each{|v| v*2}).to eq (nil)
      end
   end
   describe '#my_each_with_index' do
      it 'goes through the array and returns same nil' do
         expect(array.my_each_with_index{|v| v*2}).to eq (nil)
      end
   end
   describe '#my_select' do
        it 'goes through the array and returns array where block condition is true' do
            expect(array.my_select{|v| v % 2 == 0}).to eq ([2])
        end
    end
    describe '#my_count' do
    it 'goes through the array and returns the number of items in the array' do
        expect(array.my_count).to eq (3)
    end
end
    describe '#my_map' do
        it 'goes through the array and returns an array of boolean values' do
            expect(array.my_map{|v| v * 2 == 0}).to eq ([false,false,false])
        end

        it 'goes through the array and returns an array of boolean values' do
            expect(array.my_map{|v| v * 2 == 4}).to eq ([false,true,false])
        end
    end
end