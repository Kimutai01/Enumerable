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
