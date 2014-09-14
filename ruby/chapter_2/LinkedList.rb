class Node
  attr_accessor :data, :next

  def initialize(data = nil)
    @data = data
  end

  def append(data)
    if @data.nil?
      @data = data
    else
      last_node = Node.new(data)
      current_node = self

      while current_node.next != nil
        current_node = current_node.next
      end

      # set the end to last_node
      current_node.next = last_node
    end
  end


end
