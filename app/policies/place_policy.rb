class PlacePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true # Everyone can view a place
  end

  def new?
    user.admin # Only admins can create a place
  end
  
  def create?
    user.admin # Only admins can create a place
  end

  def update?
    user.admin # Only admins can update a place
  end
  
  def destroy?
    user.admin # Only admins can delete a place
  end
end
