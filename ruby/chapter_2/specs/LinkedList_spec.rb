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


  describe "#append" do

    context 'no data specified on init' do
      it 'sets the data at the head' do
        node = Node.new
        node.append("Biggie")

        expect(node.data).to eq("Biggie")
      end
    end

    context 'data exists on head' do
      it 'sets next to data' do
        @node.append("Tupac")
        expect(@node.next.data).to eq("Tupac")
      end
    end

    context 'append twice' do
      it 'sets next next to data' do
        @node.append("Tupac")
        @node.append("Kanye")

        expect(@node.next.next.data).to eq("Kanye")
      end
    end

  end


  # describe "#delete" do

  #   context 'only one node' do
  #     it 'returns nil on head data' do
  #       @node.delete("Biggie")
  #       expect(@node.data).to be nil
  #     end
  #   end

  #   context 'two nodes' do
  #     before do
  #       @node.append("Tupac")
  #     end

  #     describe 'delete first' do
  #       it 'should only have one node with Tupac data' do
  #         @node.delete("Biggie")

  #         expect(@node.data).to eq("Tupac")
  #         expect(@node.next).to be nil
  #       end
  #     end

  #     describe 'delete second' do
  #       it 'should only have one node with Biggie data' do
  #         @node.delete("Tupac")

  #         expect(@node.data).to eq("Biggie")
  #         expect(@node.next).to be nil
  #       end
  #     end
  #   end

  #   context 'three nodes' do
  #     before do
  #       @node.append("Tupac")
  #       @node.append("Kanye")
  #     end

  #     describe 'delete first' do
  #       it 'should only have two nodes with Tupac and Kanye' do
  #         @node.delete("Biggie")

  #         expect(@node.data).to eq("Tupac")
  #         expect(@node.next.data).to eq("Kanye")
  #         expect(@node.next.next).to be nil
  #       end
  #     end

  #     describe 'delete second' do
  #       it 'should only have two nodes with Biggie and Kanye' do
  #         @node.delete("Tupac")

  #         expect(@node.data).to eq("Biggie")
  #         expect(@node.next.data).to eq("Kanye")
  #         expect(@node.next.next).to be nil
  #       end
  #     end

  #     describe 'delete third' do
  #       it 'should only have two nodes with Biggie and Tupac' do
  #         @node.delete("Kanye")

  #         expect(@node.data).to eq("Biggie")
  #         expect(@node.next.data).to eq("Tupac")
  #         expect(@node.next.next).to be nil
  #       end
  #     end
  #   end


  # end
  


end
