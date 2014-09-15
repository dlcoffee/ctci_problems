require 'rspec'
require './LinkedList.rb'


describe Node do
  before do
    @node = Node.new("Biggie")
  end


  describe "#new" do

    context 'with no parameters' do
      it 'returns nil on data' do
        node = Node.new
        expect(node.data).to be nil
      end

      it 'returns nil on next' do
        node = Node.new
        expect(node.next).to be nil
      end
    end

    context 'with data parameter' do
      it 'returns data on data' do
        expect(@node.data).to eq("Biggie")
      end

      it 'returns nil on next' do
        expect(@node.next).to be nil
      end
    end

  end
end



describe LinkedList do
  before do 
    @ll = LinkedList.new("Biggie")
  end

  describe "#new" do
    it 'returns "Biggie" on head value' do
      expect(@ll.head.data).to eq("Biggie")
    end

    it 'returns nil when no data specified' do
      ll = LinkedList.new
      expect(ll.head.data).to be nil
    end
  end



  describe "#append" do

    context 'no data specified on init' do
      it 'sets the data at the head' do
        ll = LinkedList.new
        ll.append("Biggie")
        expect(ll.head.data).to eq("Biggie")
      end

     context 'data exists on head' do
       it 'sets next to data' do
         @ll.append("Tupac")
         expect(@ll.head.next.data).to eq("Tupac")
       end
     end

     context 'a lot of nodes' do
       it 'returns last value as Kendrick' do
         @ll.append("Tupac")
         @ll.append("Kanye")
         @ll.append("Common")
         @ll.append("Kendrick")

         expect(@ll.tail.data).to eq("Kendrick")
        end
      end
    end

  end


  describe "#delete" do

    context 'only one node' do
      it 'returns nil on head data' do
        @ll.delete("Biggie")
        expect(@ll.head.data).to be nil
      end
    end

    context 'two nodes' do
      before do
        @ll.append("Tupac")
      end

      describe 'delete first' do
        it 'should only have one node with Tupac data' do
          @ll.delete("Biggie")

          expect(@ll.head.data).to eq("Tupac")
          expect(@ll.head.next).to be nil
        end
      end

      describe 'delete second' do
        it 'should only have one node with Biggie data' do
          @ll.delete("Tupac")

          expect(@ll.head.data).to eq("Biggie")
          expect(@ll.head.next).to be nil
        end
      end
    end

    context 'three nodes' do
      before do
        @ll.append("Tupac")
        @ll.append("Kanye")
      end

      describe 'delete first' do
        it 'should only have two nodes with Tupac and Kanye' do
          @ll.delete("Biggie")

          expect(@ll.head.data).to eq("Tupac")
          expect(@ll.head.next.data).to eq("Kanye")
          expect(@ll.head.next.next).to be nil
        end
      end

      describe 'delete second' do
        it 'should only have two nodes with Biggie and Kanye' do
          @ll.delete("Tupac")

          expect(@ll.head.data).to eq("Biggie")
          expect(@ll.head.next.data).to eq("Kanye")
          expect(@ll.head.next.next).to be nil
        end
      end

      describe 'delete third' do
        it 'should only have two nodes with Biggie and Tupac' do
          @ll.delete("Kanye")

          expect(@ll.head.data).to eq("Biggie")
          expect(@ll.head.next.data).to eq("Tupac")
          expect(@ll.head.next.next).to be nil
        end
      end
    end
   end

end
