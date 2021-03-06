class ChefProfilePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all

      # For a multi-tenant SaaS app, you may want to use:
      # scope.where(user: user)
    end
  end

  def show?
    return true
  end

  def new?
    true
  end

  def create?
    true
  end
end
