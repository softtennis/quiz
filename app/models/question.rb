class Question < ApplicationRecord
  has_many :question_choices
  has_many :choices, through: :question_choices

  def self.select_choice(number)
    @choice1 = Choice.find(number)
    @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).first
    @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).first
    @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).first
  end
end