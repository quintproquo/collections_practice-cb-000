def sort_array_asc(array)
  array.sort do |a, b|
    a <=> b
  end
end

def sort_array_desc(array)
  array.sort do |a, b|
    b <=> a
  end
end

def sort_array_char_count(array)
  array.sort do |a, b|
    a.size <=> b.size
  end
end

def swap_elements(array)
  tmp = array.pop
  array.insert(1, tmp)
end

def swap_elements_from_to(array, i, di)
  tmp = array.delete(array[di])
  array.insert(di, array[i])
  array[i] = tmp
  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  rarr = []
  array.each do |i|
    i[2] = "$"
    rarr << i
  end
end

def find_a(array)
  array.select {|i| i.upcase.start_with?("A")}
end

def sum_array(array)
  array.reduce(:+)
end

def add_s(array)
  array.each_with_index.collect { |e, i| i == 1 ? e : e << "s" }
end
