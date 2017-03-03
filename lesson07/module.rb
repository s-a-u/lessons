module MyAttrAccessor
	
  def my_attr_accessor(*names)
    names.each do |name|
      var_name = "@#{name}".to_sym
      define_method(name) { instance_variable_get(var_name) }
      define_method("#{name}=".to_sym) do |value|
      raise 'number not string' unless name.is_a?(Simbol) instance_variable_set(var_name, value)
      end
    end
  end
end

class Test
  extend MyAttrAccessor
  include MyAttrAccessor
  my_attr_accessor :my_attr, :a, :b, :c
end
@@seats = 25

# att_accessor_with_history

# <name>_history