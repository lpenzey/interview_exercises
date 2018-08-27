class Node
    attr_accessor :data
    attr_accessor :next
  
    def initialize(data)
      @data = data
    end
  end
  
  class LinkedList
    attr_reader :head
  
    def initialize(head = nil)
      @head = head
    end
  
    def add(element)
      node = Node.new(element)
      node.next = head
      @head = node
    end
  
    def traverse
      string = ''
      current_node = @head
      until current_node.nil?
        string += current_node.data.to_s + ' '
        current_node = current_node.next
      end
      string.strip!
    end
  
    def delete(num)
      previous_node = nil
      current_node = @head
      until current_node.nil? || current_node.data == num
        previous_node = current_node
        current_node = current_node.next
      end
      unless current_node.nil?
        if previous_node.nil?
          @head = current_node.next
        else
          previous_node.next = current_node.next
        end
      end
    end
  
    def replace(data, position)
      place = 0
      current_node = @head
      until place == position || current_node.next.nil?
        place += 1
        current_node = current_node.next
      end
      current_node.data = data unless current_node.next.nil?
    end
  end