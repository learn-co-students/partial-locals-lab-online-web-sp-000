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

  def self.search(search_input)
    if name == ""
      Student.all
    else
      Student.all.select do |student|
        student.name.downcase =~ /#{search_input}/
      end
    end
  end
end
