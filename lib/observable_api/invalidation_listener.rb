# frozen_string_literal: true

# An InvalidationListener is notified whenever an [Observable] becomes invalid. It can be registered and
# unregistered with {Observable.addListener} and [Observable.removeListener] respectively.
#
# For an in-depth explanation of invalidation events and how they differ from change events, see the documentation of
# `ObservableValue`.
#
# The same instance of `InvalidationListener` can be registered to listen to multiple `Observables`.
class InvalidationListener

  # This method needs to be provided by an implementation of InvalidationListener. It is called if an Observable
  # becomes invalid.
  #
  # In general it is considered bad practice to modify the observed value in this method.
  #
  # @param observable The Observable that became invalid
  def invalidated(observable: Observable) # rubocop:disable Lint/UnusedMethodArgument
    throw NotImplementedError()
  end

end
