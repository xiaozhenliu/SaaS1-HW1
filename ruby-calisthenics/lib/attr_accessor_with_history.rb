class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s # make sure it's a string
    attr_reader attr_name # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    class_eval %Q{
      def #{attr_name}=(whatever)
        if !defined? @#{attr_name}_history
           @#{attr_name}_history = [nil]
        end
        
        @#{attr_name} = whatever
        @#{attr_name}_history << whatever
      end

      def #{attr_name}_history
        if !defined? @#{attr_name}_history
           @#{attr_name}_history = nil
        elsif @#{attr_name}_history == [nil]
           return nil
        elsif @#{attr_name}_history.size == 2
           return [nil]
        else
           return @#{attr_name}_history[0..-2]
        end
      end  
      
    }
  end
end
