class Node
  attr_accessor :data, :next

  def initialize(data = nil)
    @data = data
  end

end


class LinkedList
  attr_accessor :head 

  def initialize(data = nil)
    @head = Node.new(data)
  end



  def append(data)
    if @head.data.nil?
      @head = Node.new(data)
    else
      last_node = Node.new(data)
      current_node = @head

      while current_node.next != nil
        current_node = current_node.next
      end

      # set the end to last_node
      current_node.next = last_node
    end
  end

  def delete(data)
    if @head.data == data
      if @head.next.nil?
        @head = Node.new
      else
        @head = @head.next
      end
    end

    current_node = @head

    while current_node.next != nil
      if current_node.next.data == data
        if current_node.next.next.nil?
          current_node.next = nil
          return
        else
          current_node.next = current_node.next.next
          break
        end
      end
      
      # otherwise continue to loop
      current_node = current_node.next
    end



    
  end


  def tail
    current_node = @head

    while current_node.next != nil
      current_node = current_node.next
    end

    current_node
  end

end
