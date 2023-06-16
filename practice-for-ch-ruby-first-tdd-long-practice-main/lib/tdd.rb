class Array

    def uniq
        res = []
        self.each { |i| res << i if !res.include?(i) }
    
        res
    end

    def two_sum
        res = []
        self.each_with_index do |i, idx1|
            self.each_with_index do |j, idx2|
                res << [idx1, idx2] if i + j == 0 && idx1 < idx2
            end
        end
        res
    end
end

def my_transpose(rows)
    (0...rows.length).map do |i|
        rows.map { |row| row[i] }
    end
end

def stock_picker(array)
    max = array.max
    max_idx = array.index(max)
    min = array[0..max_idx].min
    min_idx = array.index(min)
    [min_idx, max_idx]
end

arr = [[1,2,3,4], [], []]

game_over
arr.unshift

return true if arr[0].empty? || arr[1].empty? && arr[2] == arr2.sorted
1,2
