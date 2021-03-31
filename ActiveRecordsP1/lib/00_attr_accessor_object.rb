require "byebug"
class AttrAccessorObject
  def self.my_attr_accessor(*names)
    names.each do |name|

      define_method(name) do
        # debugger
        instance_variable_get("@#{name}")
      end
      define_method("#{name}=") do |val| 
        instance_variable_set("@#{name}", val)
      end

    end
  end
    my_attr_accessor(:x, :y)
end


#  define_method(attr) { instance_variable_get("@#{attr}") }
      
#  define_method("#{attr}=") { |val| instance_variable_set
#       ("@#{attr}", val) }
# def x=(val)
#   @x = val
# end