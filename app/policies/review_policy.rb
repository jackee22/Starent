class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def create?
    #user is the current user and record is the new review
    record.star.reservations.where(user: user).exists?
  end
end
