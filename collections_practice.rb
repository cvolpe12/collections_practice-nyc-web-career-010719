require 'pry'

def sort_array_asc(array)
  array.sort {|number| number}
end

def sort_array_desc(array)
  array.sort {|a ,b| b <=> a}
end

def sort_array_char_count(array)
  array.sort_by {|a| a.length}
end

def swap_elements(array)
  array[0], array[1], array[2] = array[0], array[2], array[1]
end

def swap_elements_from_to(array, index_move, index_swap)
  temp = array[index_move]
  array[index_move] = array[index_swap]
  array[index_swap] = temp
  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  new_arr = []
  array.each do |element|
    element.split(//)
    element[2] = "$"
  end
end

def find_a(array)
  array.select do |element|
    element.start_with?("a")
  end
end

def sum_array(array)
  array.inject(0, :+)
end

def add_s(array)
  array.each_with_index.collect do |element, index|
    if index != 1
      element << "s"
    else
      element
    end
  end
end

binding.pry
