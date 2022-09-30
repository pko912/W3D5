require 'byebug'
class PolyTreeNode
    
    attr_reader :value, :parent, :children
    
    def initialize(value,parent = nil,children = [])
        @value = value
        @parent = parent
        @children = children
    end

    def parent=(passed_node)
        parent = 
        #debugger
        #B.parent = A
        self.parent = passed_node
        #passed_node.children << self

    end

end

a = PolyTreeNode.new('A')
b = PolyTreeNode.new('B')
b.parent= a
p b.parent => a
p a.children => [b]