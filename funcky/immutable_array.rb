require 'forwardable'

class ImmutableArray
  extend Forwardable

  def_delegators :@array, :[], :each, :map, :size, :include?, :reduce, :filter, :select

  def initialize(array)
    @array = array.freeze
  end
end
