require 'byebug'
class PolyTreeNode
    
    attr_reader :value, :parent, :children
    
    def initialize(value,parent = nil,children = [])
        @value = value
        @parent = parent
        @children = children
    end

    def parent= passed_node

        @parent = passed_node
        if !passed_node.children.include?(self)
            passed_node.children << self
        end

    end

end

p a = PolyTreeNode.new('A')
p b = PolyTreeNode.new('B')
b.parent= nil 
p b
# p b.parent => a
# p a.children => [b]