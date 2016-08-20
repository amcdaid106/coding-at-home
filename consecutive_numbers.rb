
def find_length(list)
  ordered_list = list.sort
  # print ordered_list
  # consecutive_numbers = []
  sequence = false
  current_sequence = 1
  longest_sequence = 0
  ordered_list.each_with_index do |number, index|
    if index == (ordered_list.length - 1)
      break
    end
    if (ordered_list[index] + 1) == ordered_list[index + 1]
      sequence = true
      current_sequence += 1
    else
      if consecutive_numbers.include? (ordered_list[index])
        consecutive_numbers << ordered_list[index + 1]
      else
        consecutive_numbers << [ordered_list[index], ordered_list[index + 1]]
      end
    end
  end
  consecutive_numbers
end

list = [1, 94, 93, 1000, 2, 92, 1001]
p find_length(list)


def test_consecutive_search
  list = [1, 94, 93, 1000, 2, 92, 1001]
  result = find_length(list)
  if result == 3
    puts "It worked!"
  else
    puts "FAIL! Result: #{result}"
  end
end

# test_consecutive_search

