require_relative 'lib/node'
require_relative 'lib/linked_list'


head = Node.new("head")
neck = Node.new("neck")
chest = Node.new("chest")
abdomen = Node.new("abdomen")
hips = Node.new("hips")
# legs = Node.new("legs")



# head.append(neck)
# neck.append(chest)


# puts head
# puts neck
# puts chest

# p head.next.value
# p neck.next.value
# p chest.next


list = LinkedList.new
list.append(head)
list.append(neck)
list.append(chest)
list.append(abdomen)
list.prepend(hips)





puts list
# puts list.size
# puts list.at(3)


  # list.pop
  # list.pop
# puts list.contains?("hips")
# puts list.find("hips")
puts list.insert_at("legs", 0)
puts list

puts list.remove_at(4)
puts list

# puts list.head.value
# puts list.tail.value
# puts list.tail.next
