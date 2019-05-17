# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string
#  hometown   :string
#  birthday   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Student < ActiveRecord::Base
  has_many :classroom_students
  has_many :classrooms, through: :classroom_students

  def self.search(search_string)
    return_array = []
    if search_string == ""
      self.all
    else
      self.all.find_all { |student| student.name.downcase.include?(search_string) }
    end
  end

end
