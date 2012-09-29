class Plan < ActiveRecord::Base

  def self.label(field=nil)
    key = "activerecord."
    if field
      key << "attributes.plan." << field
    else
      key << "models.plan"
    end
    return I18n.t key
  end
end
