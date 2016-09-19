class PostPolicy < ApplicationPolicy
  def index?
    user.present?
  end

  def show?
    user.present?
  end

  def new?
    user.present?
  end

  def create?
    user.present?
  end

  def edit?
    user.present? && user == post.user
  end

  def update?
    edit?
  end

  def destroy?
    edit?
  end

  private

    def post
      record
    end
end