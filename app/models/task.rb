require_relative '../../config/application'

class Task < ActiveRecord::Base

  def complete!
    self.complete = true
    save
  end

  def to_s
      "#{id}. [#{complete ? 'x' : ' '}] #{description}"
  end
end
