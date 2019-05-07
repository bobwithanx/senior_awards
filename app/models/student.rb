class Student < ApplicationRecord
  belongs_to :advisory, inverse_of: :students, optional: true
  belongs_to :counselor, optional: true
  has_and_belongs_to_many :clubs
  has_and_belongs_to_many :cte_programs
  has_and_belongs_to_many :scholarships
  has_and_belongs_to_many :future_plans

  def previous
    Student.where(["id < ?", id]).order(id: :desc).first || Student.last
  end

  def next
    Student.where(["id > ?", id]).order(:id).first || Student.first
  end

  def previous_queued
    Student.where("queued_at < ?", queued_at).order(queued_at: :desc).first
  end

  def next_queued
    Student.where("queued_at > ?", queued_at).order(:queued_at).first
  end

  def custom_label_method
    "#{firstname} #{lastname} (#{id_number})"
  end
end
