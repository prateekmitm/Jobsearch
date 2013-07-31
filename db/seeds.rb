# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Employee.create!(:emp_type => 'Employer', :jobsearch_id => '1')
# Employee.create!(:emp_type => 'Recruiter', :jobsearch_id => '1')
# Employee.create!(:emp_type => 'StaffingAgency', :jobsearch_id => '1')
# Position.create!(:position_level => 'ExecutiveLevel', :jobsearch_id => '1')
# Position.create!(:position_level => 'ManagerLevel', :jobsearch_id => '1')
# Position.create!(:position_level => 'SeniorLevel', :jobsearch_id => '1')
# Position.create!(:position_level => 'StaffLevel', :jobsearch_id => '1')
# Position.create!(:position_level => 'EntryLevel', :jobsearch_id => '1')
User.create!(:email => 'admin@admin.com', :password => '123456789',:admin=>true)