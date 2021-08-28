require 'pry-byebug'

def bubble_sort(array_to_sort)
    sorted = false

    while sorted == false do
        sorted = true
        array_to_sort.each_with_index do |element, index|
            if index+1 < array_to_sort.length && element > array_to_sort[index+1]
                array_to_sort[index] = array_to_sort[index+1]
                array_to_sort[index+1] = element
                sorted = false
            end
        end
    end
end

sort_array = [4,3,78,2,0,2]
bubble_sort(sort_array)
p sort_array