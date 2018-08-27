require 'linked_list'

describe '.LinkedList' do
  describe '.add' do
    it 'adds an element to a linked list' do
      linked_list = LinkedList.new

      linked_list.add(1)

      result = linked_list.traverse
      expect(result).to eq '1'
    end
  end

  describe '.delete' do
    it 'it deletes an element' do
      linked_list = LinkedList.new

      linked_list.add(3)
      linked_list.add(2)
      linked_list.add(1)

      linked_list.delete(2)

      result = linked_list.traverse
      expect(result).to eq('1 3')
    end

    it 'it does nothing if the element does not exist' do
      linked_list = LinkedList.new

      linked_list.add(3)
      linked_list.add(2)
      linked_list.add(1)

      linked_list.delete(4)

      result = linked_list.traverse
      expect(result).to eq('1 2 3')
    end

    it 'it deletes the first element' do
      linked_list = LinkedList.new

      linked_list.add(3)
      linked_list.add(2)
      linked_list.add(1)

      linked_list.delete(1)

      result = linked_list.traverse
      expect(result).to eq('2 3')
    end
  end

  describe '.replace' do
    it 'replaces the element at position' do
      linked_list = LinkedList.new

      linked_list.add(3)
      linked_list.add(2)
      linked_list.add(1)

      linked_list.replace(4, 1)

      result = linked_list.traverse
      expect(result).to eq('1 4 3')
    end

    it 'does nothing if the position does not exist' do
      linked_list = LinkedList.new

      linked_list.add(3)
      linked_list.add(2)
      linked_list.add(1)

      linked_list.replace(4, 6)

      result = linked_list.traverse
      expect(result).to eq('1 2 3')
    end
  end
end