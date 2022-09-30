class PolyTreeNode
    
    attr_reader :value, :parent, :children
    
    def initialize(value,parent = nil,children = [])
        @value = value
        @parent = parent
        @children = children
    end

    def parent=(passed_node)
        #self.parent = passed_node
        #passed_node.children << self

    end



end