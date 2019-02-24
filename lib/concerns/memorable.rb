module Memorable
  module ClassMethods
  def reset_all
   self.all.clear
  end

  def count
    self.all.count
  end
  end
  
  module InstanceMethods
    def initialize
      self.class.all << self # remember we still have self.all in each class? we are using that method
    end
  end
  
end