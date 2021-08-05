class Cohort < ActiveRecord::Base
    has_many :students

    def add_student(name, age)
        Student.create(name: name, age: age, cohort_id: self.id)
    end

    def average_age
        self.students.average(:age)
    end

    def total_students
        self.students.count
    end

    def self.biggest
        Student.group(:cohort_id).order("count(cohort_id) desc").first.cohort
    end

    def self.sort_by_mod
        Cohort.order(current_mod: :desc)
    end
end