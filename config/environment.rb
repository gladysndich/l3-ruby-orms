require 'bundler'
Bundler.require

require_relative '../lib/student'

DB = { conn: SQLite3::Database.new("db/school.db") }

# RUN CODE FROM HERE

#CREATE TABLE
Student.create_table

#Create a new student
gladys = Student.new(name: "Gladys", age: 25)
#add student to database
gladys.add_to_db
pp Student.show_all
gladys.name = "Another NAME"
gladys.age = 22
gladys.update_student

pp Student.show_all