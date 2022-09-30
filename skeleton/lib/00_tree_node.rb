require 'byebug'
class PolyTreeNode
    
    attr_reader :value, :parent, :children
    
    def initialize(value,parent = nil,children = [])
        @value = value
        @parent = parent
        @children = children
    end

    def parent= passed_node
        # parent = 
        # debugger
        #B.parent = A
        @parent = passed_node
        #B.parent
        #passed_node.children << self 

    end

end

p a = PolyTreeNode.new('A')
p b = PolyTreeNode.new('B')
p b.parent= a
# p b.parent => a
# p a.children => [b]