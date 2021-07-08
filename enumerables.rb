module Enumerable

    def my_each
        for value in self
            yield value
        end
    end

    def my_each_with_index
        index = 0
        for value in self
            yield value, index
            index += 1
        end
    end

    def my_select
        arr = []
        my_each { |item| arr << item if yield item}
        arr
    end

    def my_all
        result = true
        my_each { |item| result = result && yield(item) }
        result
    end

    def my_any
        arr = []
        my_each { |item| arr << item if yield item}
        return arr.size > 0
    end

    def my_none
        arr = []
        my_each { |item| arr << item if yield item}
        return arr.size == 0
    end

    def my_count
        count = 0
        my_each { |item| count +=1 }
        return count
    end

    def my_map(proc = nil)
        arr = []
        if proc == nil
            # this condition means that it is not a proc, it is a block
            my_each {|item| arr << yield(item)}
        else
            my_each {|item| arr << proc.call(item)}
        end
        return arr
    end

    def my_inject
        accumulator = self[0]
        my_each_with_index do |item, index|
            next if index == 0
            accumulator = yield(accumulator, item)
        end
        accumulator
    end
end

