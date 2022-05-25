class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def create?
    true
  end

  def my_bookings?
    true
  end

  def accept?
    true
  end

  def reject?
    true
  end
end
