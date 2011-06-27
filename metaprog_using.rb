# using() 
#
# Ruby implementation of the C# method 'using()'
# (http://msdn.microsoft.com/en-us/library/yh598w02(v=vs.80).aspx)
#
# assured that the dispose() method from the given object will be called
# either at the end or if an exception occurs
#
# example from the book "Ruby Metaprogramming" by Paolo Perrotta
#


require 'test/unit'

module Kernel 
  
  def using(r)
    begin
      yield
    ensure
      r.dispose
    end
  end  
end


class TestUsing < Test::Unit::TestCase
 
  class Resource
   def dispose
     @disposed = true
    end
    
    def disposed?
      @disposed
    end
  end
  
  def test_disposes_of_ressource 
    r = Resource.new
    using(r) { }
    assert r.disposed?
  end
  
  def test_disposes_of_resource_in_case_of_exception
    r = Resource.new
    assert_raises(Exception) { |variable|  
      using(r) {
        raise Exception
      }
    }
    assert r.disposed?
  end
end