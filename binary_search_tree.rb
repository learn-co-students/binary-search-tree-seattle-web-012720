class BST
    attr_reader :data, :left, :right

    def initialize( data )
        @data = data
        @left = nil
        @right = nil
    end


    def insert(newData)
        if (newData <= @data)
            if (@left.nil?)
                @left = BST.new(newData)
            else 
                @left.insert(newData)
            end
        else
            @right.nil? ? @right = BST.new(newData) : @right.insert(newData)
        end
    end

    def each(&block)
        left.each(&block) if left
        block.call(data)
        right.each(&block) if right
      end


end