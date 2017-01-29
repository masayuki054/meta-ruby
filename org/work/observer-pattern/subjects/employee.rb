# -*- coding: utf-8 -*-
require '../observer'
require '../observers/payroll'
require '../observers/taxman'

class Employee < Subject

  attr_reader :name, :title, :salary

  def initialize(name, title, salary)
    @name = name
    @title = title
    @salary = salary
    add_observer(Payroll.new)
    add_observer(TaxMan.new)
  end

  # 給与をセットして、ConcreteObserverに通知する
  def salary=(new_salary)
    @salary = new_salary
    changed
    notify_observers(self)
  end
end
