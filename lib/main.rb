# frozen_string_literal: true

# @param array [Array]
# @return [Array]
def bubble_sort(array)
  limit = array.length - 1
  loop do
    index = 0
    is_done = true
    while index < limit
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        is_done = false
      end
      index += 1
    end
    break if is_done

    # A credit for the AI for suggesting the limit variable idea for me
    # and how can decrease it each time after a loop finishes improves the performance.
    limit -= 1
  end
  array
end

arr = [4, 3, 78, 2, 0, 2]
p bubble_sort(arr)

arr = [4, 3, 78, 2, 0, 2] + [4, 3, 78, 2, 0, 2]
p bubble_sort arr
