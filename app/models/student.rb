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
    if search_string == ''
      Student.all
    elsif !Student.all.empty?
      students = []
      Student.all.each do |s|
        if s.name.downcase.include?(search_string.downcase)
          students << s
        end
      end
      students
    end
  end
end
