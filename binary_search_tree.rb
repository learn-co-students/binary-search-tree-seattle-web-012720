class BST
    attr_reader :data, :left, :right
    def initialize(data)
      @data=data
      @left=nil
      @right=nil
    end

    def insert(new_data)
      if new_data <= @data
        @left == nil ? @left = BST.new(new_data) : @left.insert(new_data)
      else
        @right == nil ? @right = BST.new(new_data) : @right.insert(new_data)
      end
    end

    def each(&block)
      @left.each(&block) if @left
      yield @data
      @right.each(&block) if @right
    end

end