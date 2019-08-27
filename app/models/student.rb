
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

  def self.search(name)
    # look for all students whos name begin with search and then return it.
    # if no name is given return all students
    if name == ''
      # if (name) = 'string'
      return Student.all
      # return an array of all student objects or
      else
      Student.all.select do |s|
        # look thru the array of students and select
        # students name which is lower-cased and includes part of the string var = (name) 
        s.name.downcase.include? name
      end
    end
  end


end
