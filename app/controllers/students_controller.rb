class StudentsController < ApplicationController

    def index
        render json: Student.all
    end

    def grades
        render json: Student.all.sort_by { |k| k["grade"] }.reverse
    end

    def highest_grade
        render json: Student.all.sort_by { |k| k["grade"] }.reverse.first
    end


end
