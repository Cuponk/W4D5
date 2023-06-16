require 'tdd'
describe Array do 
    let(:array1) { [1, 2, 1, 3, 3] }
    let(:array2) { [-1, 0, 2, -2, 1] }

    describe '#uniq' do
        it 'returns array without duplicates' do
            expect(array1.uniq).to eq([1,2,3])
        end
        it 'does not use #uniq' do
            expect(array1).not_to receive :uniq
        end
    end

    describe '#two_sum' do
        it 'should return the indicies of pairs that equal zero' do
            expect(array2.two_sum).to eq([[0, 4], [2, 3]])
        end
        it 'should sort each subarray' do
            expect(array2.two_sum[0]).to eq(array2.two_sum[0].sort) 
        end
    end
end

describe '#my_transpose' do
    rows = [[0, 1, 2], [3, 4, 5], [6, 7, 8]]
    it "does not use #transpose" do
        expect(my_transpose(rows)).not_to receive :transpose
    end

    it "transposes rows to columns" do
        expect(my_transpose(rows)).to eq(rows.transpose)
    end
end

describe '#stock_picker' do
    stocks = [123,54,23,76,343,5]

    it 'should sort each pair' do
        expect(stock_picker(stocks)).to eq(stock_picker(stocks).sort) 
    end

    it 'returns the greatest difference between two pairs in order of min and max' do
        expect(stock_picker(stocks)).to eq([2,4])
    end
end

describe '#move' do
    discs = [[1,2,3], [], []]
    input = [0,2]
    it 'moves the top piece to the specifed position' do
        expect(move(input)).to eq [[2,3],[],[1]]
    end    
    
end

describe '#won?' do

    it 'returns true if first two subarrays are empty & last subarray is in order' do
        expect[0].empty? ||[1].empty? &&[2] == .sorted
    end
end

return true 
1,2