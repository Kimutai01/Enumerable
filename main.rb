require_relative 'list'

list = MyList.new(1, 2, 3, 4)

puts("\n--Testing all?--")
puts(list.all? { |e| e < 5 })
# true
puts(list.all? { |e| e > 5 })
# false
puts("\n--No Block error for all?--")
puts(list.all?)
# 'No blocks given'

puts("\n--Testing any?--")
puts(list.any? { |e| e == 2 })
# true
puts(list.any? { |e| e == 5 })
# false
puts("\n--No Block error for any?--")
puts(list.any?)
# 'No blocks given'

puts("\n--Testing filter--")
p list.filter(&:even?)
# [2, 4]
puts("\n--No Block error for filter--")
p list.filter
