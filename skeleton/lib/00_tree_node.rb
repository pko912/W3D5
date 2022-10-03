require 'byebug'
class PolyTreeNode
    
    attr_reader :value, :parent, :children
    
    def initialize(value,parent = nil,children = [])
        @value = value
        @parent = parent
        @children = children
    end

    def parent= passed_node

        has_parent = !@parent.nil?
        #debugger
        if has_parent
            #debugger
            @parent.children.delete(self)
        end

        @parent = passed_node
        
        return nil if self.parent == nil
        if !passed_node.children.include?(self)
            passed_node.children << self
        end
    end

    def add_child(child_node)
        @children << child_node
        child_node.parent= self
    end

end

p a = PolyTreeNode.new('A')
p b = PolyTreeNode.new('B')
p c = PolyTreeNode.new('C')

b.parent = a
b.parent = c
p b
# p b.parent => a
# p a.children => [b]