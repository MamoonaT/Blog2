class SchoolsController < ApplicationController
 
  def index
    @students = Student.all.order("created_at DESC")
  end

  
end
