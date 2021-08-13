class Task < ApplicationRecord
  has_many :works
  belongs_to :user

  USER = []
  @users = User.all
  @users.each do |user|
    USER.push(user.email)
  end 

  def badge_color
    case status
    when 'not-started'
      'secondary'
    when 'in-progress'
      'info'
    when 'complete'
      'success'
    end
  end

  def status
    return 'not-started' if works.none?

    if works.all? { |work| work.complete? }
      'complete'
    elsif works.any? { |work| work.in_progress? || work.complete? }
      'in-progress'
    else
      'not-started'
    end
  end

  def percent_complete
    return 0 if works.none?
    ((total_complete.to_f / total_works) * 100).round
  end

  def total_complete
    works.select { |work| work.complete? }.count
  end

  def total_works
    works.count
  end
end
