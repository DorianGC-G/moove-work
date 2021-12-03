class ReservationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true # Anyone can place a reservation
  end

  def update?
    record.user == user || user.admin # Only the user who placed a reservation or an admin can update it
  end

  def destroy?
    record.user == user || user.admin # Only the user who placed a reservation or an admin can cancel it
  end

  def show?
    record.user == user || user.admin # Only the user who placed a reservation or an admin can view it
  end

  def index?
    user.admin # Only an admin can list all reservations
  end

end
