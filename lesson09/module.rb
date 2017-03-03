module MyAttrAccessor
	
  def my_attr_accessor(*names)
    names.each do |name|
      var_name = "@#{name}".to_sym
      var_history = "@#{name}_history".to_sym
      
      define_method(name) { instance_variable_get(var_name) }
      
      define_method("#{name}=".to_sym) do |value|
        instance_variable_set(var_name, value)
        instance_variable_set(var_history, []) unless instance_variable_get(var_history)
        instance_variable_get(var_history) << value
      end

      define_method("#{name}_history") { instance_variable_get(var_history) }
    end
  end

end

module Validator

  def self.included(base) 
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end

  module InstanceMethods
    def validate!
      @@validate_rules.each do |rule|
        case rule[:rule]
        when :format
          raise 'format error' unless instance_variable_get("@#{rule[:name]}".to_sym) =~ rule[:arg]
        when :type
          raise 'type error' unless instance_variable_get("@#{rule[:name]}".to_sym).instance_of(rule[:arg])
        when :presence
          railse 'presence' if (instance_variable_get("@#{rule[:name]}".to_sym) == nil) || (instance_variable_get("@#{rule[:name]}".to_sym) == '')
        end
      end
    end
  end

  module ClassMethods
    def validate(name, rule, arg = nil)
      @@validate_rules ||= []
      @@validate_rules << {
        name: name,
        rule: rule,
        arg: arg
      }
    end
  end
end

class Test
  extend MyAttrAccessor
  include MyAttrAccessor
  include Validator
  # include MyAttrAccessor
  my_attr_accessor :a, :b, :c

  validate :a, :format, /^d+$/
  validate :a, :presence
  validate :b, :presence
  validate :station, :type, RailwayStation
  

end

class Train
  include Validator
  attr_accessor :number

  validate :number, :format, /\d{3}/
  validate :number, :type, String
  validate :number, :presence
end

@@seats = 45
