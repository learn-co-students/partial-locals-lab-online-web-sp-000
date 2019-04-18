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

  def self.search(search_name)
    students_array = []
    if search_name.empty?
      students_array = self.all
    else
      self.all.each do |student|
        if student.name.downcase.include?(search_name.downcase)
          students_array << student
        end
      end
    end
    students_array
  end

end
