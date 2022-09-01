class StudentPolicy < ApplicationPolicy


  def index?
    user.present?
  end

  def show?
    false
  end

  def create?
    false
  end

  def new?
    create?
  end

  def update?
    student.admin? or not record.published?
  end

  def edit?
    update?
  end

  def destroy?
    false
  end

end