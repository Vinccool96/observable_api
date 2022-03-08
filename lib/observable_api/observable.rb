# frozen_string_literal: true

# An `Observable` is an entity that wraps content and allows to observe the content for invalidations.
#
# An implementation of `Observable` may support lazy evaluation, which means that the content is not immediately
# recomputed after changes, but lazily the next time it is requested. All binding and properties in this library
# support lazy evaluation.
#
# Implementations of this class should strive to generate as few events as possible to avoid wasting too much time in
# event handlers. Implementations in this library mark themselves as invalid when the first invalidation event occurs.
# They do not generate anymore invalidation events until their value is recomputed and valid again.
class Observable

  # Adds an InvalidationListener which will be notified whenever the Observable becomes invalid. If the same listener is
  # added more than once, then it will be notified more than once. That is, no check is made to ensure uniqueness.
  #
  # Note that the same actual InvalidationListener instance may be safely registered for different Observable.
  #
  # The Observable stores a strong reference to the listener which will prevent the listener from being garbage
  # collected and may result in a memory leak. It is recommended to either unregister a listener by calling
  # remove_listener after use or to use an instance of WeakInvalidationListener avoid this situation.
  #
  # @param listener The listener to register
  def add_listener(listener: InvalidationListener) # rubocop:disable Lint/UnusedMethodArgument
    throw NotImplementedError()
  end

  # Removes the given listener from the collections of listeners, that are notified whenever the value of the Observable
  # becomes invalid.
  #
  # If the given listener has not been previously registered (i.e. it was never added) then this method call is a no-op.
  # If it had been previously added then it will be removed. If it had been added more than once, then only the first
  # occurrence will be removed.
  #
  # @param listener The listener to remove
  def remove_listener(listener: InvalidationListener) # rubocop:disable Lint/UnusedMethodArgument
    throw NotImplementedError()
  end

  # Verify if the specified InvalidationListener already exists for this Observable.
  #
  # @param listener the InvalidationListener to verify
  #
  # @return [Boolean] true, if the listener already listens, false otherwise.
  def invalidation_listener_already_added(listener: InvalidationListener) # rubocop:disable Lint/UnusedMethodArgument
    throw NotImplementedError()
  end

end
