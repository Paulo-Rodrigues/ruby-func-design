module Pipe
  def pipe(func)
    func.call(self)
  end
end

class Object
  include Pipe
end
