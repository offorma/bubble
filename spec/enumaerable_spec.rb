require 'rspec'
require "./eneumerable"

describe Enumerable do 
    let(:array) { $array = [1,2,3] }
    describe '#my_each' do 
        it 'goes through the array and returns same item double' do
            multy_ar = []
            array.my_each{|v| multy_ar.push(v*2)}
            expect(multy_ar).to eq ([2,4,6])
        end
    end
   describe '#my_each_with_index' do
    it 'goes through the array and returns item and index' do
        array_pair_with_org = []
        array_pair_with_cust = []
        array.my_each_with_index{|v, i| array_pair_with_cust.push([v,i])}
        array.each_with_index{|v, i| array_pair_with_org.push([v,i])}
        expect(array_pair_with_cust).to eq (array_pair_with_cust)
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