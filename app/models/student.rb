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

  def self.search(student_name)
    puts student_name.blank?
    if student_name.blank?
      Student.all
    else
      Student.all.select{ |x| x.name.downcase.include?(student_name.downcase)}
    end
  end
end
