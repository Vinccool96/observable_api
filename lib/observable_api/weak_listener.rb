# frozen_string_literal: true

# WeakListener is the super interface of all weak listener implementations of the API runtime. Usually it should not be
# used directly, but instead one of the sub-interfaces will be used.
class WeakListener

  # Returns true if the linked listener was garbage-collected. In this case, the listener can be removed from the
  # observable.
  #
  # @return [Boolean] true if the linked listener was garbage-collected.
  def was_garbage_collected
    throw NotImplementedError()
  end

end
