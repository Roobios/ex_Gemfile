def is_multiple_of_3_or_5?(current_number)
  return current_number % 3  == 0 || current_number % 5 ==0
end

def sum_of_3_or_5_multiples(n)
  final_sum = 0

  n.times do |current_number|
    if is_multiple_of_3_or_5?(current_number) == true
      final_sum += current_number
    end
  end
  return final_sum
end

puts sum_of_3_or_5_multiples(11)