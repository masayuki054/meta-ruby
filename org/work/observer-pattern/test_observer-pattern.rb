# -*- coding: utf-8 -*-

$: << "."

require 'subject'
require 'subjects/employee'
require './observer-mine'

john = Employee.new('John', 'Senior Vice President', 5000)
john.salary = 6000
john.salary = 7000
