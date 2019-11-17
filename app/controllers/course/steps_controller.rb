class Course::StepsController < ApplicationController
  include Wicked::Wizard
  
  steps :identity, :co, :po
  def show
    @course = Course.find(params[:course_id])
    render_wizard
  end

  def update
    @course = Course.find(params[:course_id])
    @course.update(course_params(step))
    render_wizard @course
  end

  def course_params(step)
  	permitted_attributes = case step
  	  when "first"
  	    [:name, :owner_name]
  	  when "second"
  	    [:colour, :identifying_characteristics]
  	  when "third"
  	    [:special_instructions]
  	  end

  	params.require(:course).permit(permitted_attributes).merge(form_step: step)
  end
end