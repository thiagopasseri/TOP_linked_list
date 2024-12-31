class LinkedList
  attr_accessor :head

  def initialize(head = nil)
    @head = head
  end

  def append(node)
    if head == nil
      @head = node
    else
      tail.next = node
    end
  end

  def prepend(node)
    node.next = @head
    @head = node
  end

  def tail
      next_node = head
      while(next_node&.next != nil)
        next_node = next_node.next
      end
      next_node
  end

  def size
    count = head == nil ? 0 : 1 
    next_node = head
    while(next_node&.next != nil)
      count += 1
      next_node = next_node&.next
    end
    count
  end

  def at(index)
    return nil if index < 0
    count = 0
    next_node = head
    while(next_node&.next != nil && (count < index ))
      count += 1
      next_node = next_node&.next
    end
    next_node
  end

  def pop
    pre_tail = self.at(size - 2)
    @head = nil if pre_tail == nil
    pre_tail&.next = nil
  end

  def contains?(value)
    next_node = head
    return true if next_node.value == value
    while(next_node&.next != nil)
      next_node = next_node&.next
      return true if next_node.value == value
    end
    false
  end

  def remove_at(index)
    if index != 0
      at(index-1).next = at(index).next
    elsif index == 0
      @head = at(1)
    end
  end

  def insert_at(value, index)
    new_node = Node.new(value, self.at(index))
    if index == 0
      new_node.next = head
      @head = new_node
    else
      self.at(index - 1).next = new_node
    end
  end

  def find(value)
    count = 0
    next_node = head
    return count if next_node.value == value
    while(next_node&.next != nil)
      next_node = next_node&.next
      count += 1
      return count if next_node.value == value
    end
    nil
  end

  def to_s
    text = head&.value
    next_node = head&.next

    while(next_node != nil)
      text +="-> #{next_node.value}"
      next_node = next_node.next
    end
    text.to_s + "-> NIL"
  end
end