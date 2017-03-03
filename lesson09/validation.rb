module Validation

  def self.included(base) 
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end

  module ClassMethods
    def validate(name, rule, arg = nil)
      class_variable_set(:@@validate_rules,[]) unless class_variables.include?(:@@validate_rules)
      class_variable_get(:@@validate_rules) << {
        name: name,
        rule: rule,
        arg: arg
      }
    end
  end

  module InstanceMethods
    def validate!
      self.class.class_variable_get(:@@validate_rules).each do |rule|
        value =instance_variable_get("@#{rule[:name]}".to_sym)
        case rule[:rule]
        when :presence
          raise "#{rule[:name]} cannot be nil" unless value 
        when :type
          raise "#{rule[:name]} should be #{rule[:arg]}" unless value.instance_of?(rule[:arg])
        when :format
           raise "#{rule[:name]} wrong format" unless value =~ rule[:arg]
        end
      end
      true
    end
    def valid?
      validate!
    rescue
      false
    end
  end
end