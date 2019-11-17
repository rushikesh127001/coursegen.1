class Course<ApplicationRecord
    belongs_to :user
    attr_accessor :form_step
    cattr_accessor :form_steps do
        %w(identity co po)
    end

    def required_for_step?(step)
        # All fields are required if no form step is present
        return true if form_step.nil?
      
        # All fields from previous steps are required if the
        # step parameter appears before or we are on the current step
        return true if self.form_steps.index(step.to_s) <= self.form_steps.index(form_step)
    end

end    