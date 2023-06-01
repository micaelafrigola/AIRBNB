class ReservationPolicy < ApplicationPolicy
  def index?
    record.user == user
  end

  def show?
    record.user == user
  end

  def new?
    record.flat.user != user
  end

  def create?
    true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(user: user)
    end
  end
end
