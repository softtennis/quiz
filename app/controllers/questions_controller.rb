class QuestionsController < ApplicationController
  def index
    @question = Question.find(params[:normal_id])
    # respond_to do |format|
    #   format.html { redirect_to :root }
    #   format.json { render json: @question}
    # end

    # @sample = 'sample1'
    # @sample2 = ['sample2, sample3, sample4']

    if @question.id == 1
      @choice1 = Choice.find(1)
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).first
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 2
      @choice1 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:2).first
      @choice2 = Choice.find(2)
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 3
      @choice1 = Choice.find(3)
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).first
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 4
      @choice1 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:4).first
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:4).where.not(id:@choice1).first
      @choice3 = Choice.find(4)
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 5
      @choice1 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:5).first
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:5).where.not(id:@choice1).first
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:5).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.find(5)
    end
    if @question.id == 6
      @choice1 = Choice.find(6)
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).first
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 7
      @choice1 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:7).first
      @choice2 = Choice.find(7)
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 8
      @choice1 = Choice.find(8)
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).first
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 9
      @choice1 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:9).first
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:9).where.not(id:@choice1).first
      @choice3 = Choice.find(9)
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 10
      @choice1 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:10).first
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:10).where.not(id:@choice1).first
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:10).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.find(10)
    end
    if @question.id == 11
      @choice1 = Choice.find(11)
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).first
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 12
      @choice1 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:12).first
      @choice2 = Choice.find(12)
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 13
      @choice1 = Choice.find(13)
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).first
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 14
      @choice1 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:14).first
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:14).where.not(id:@choice1).first
      @choice3 = Choice.find(14)
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 15
      @choice1 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:15).first
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:15).where.not(id:@choice1).first
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:15).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.find(15)
    end
    if @question.id == 16
      @choice1 = Choice.find(16)
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).first
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 17
      @choice1 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:17).first
      @choice2 = Choice.find(17)
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 18
      @choice1 = Choice.find(18)
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).first
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 19
      @choice1 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:19).first
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:19).where.not(id:@choice1).first
      @choice3 = Choice.find(19)
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 20
      @choice1 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:20).first
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:20).where.not(id:@choice1).first
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:20).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.find(20)
    end
    if @question.id == 21
      @choice1 = Choice.find(21)
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).first
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 22
      @choice1 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:22).first
      @choice2 = Choice.find(22)
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 23
      @choice1 = Choice.find(23)
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).first
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 24
      @choice1 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:24).first
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:24).where.not(id:@choice1).first
      @choice3 = Choice.find(24)
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 25
      @choice1 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:25).first
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:25).where.not(id:@choice1).first
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:25).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.find(25)
    end
    if @question.id == 26
      @choice1 = Choice.find(26)
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).first
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 27
      @choice1 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:27).first
      @choice2 = Choice.find(27)
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 28
      @choice1 = Choice.find(28)
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).first
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 29
      @choice1 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:29).first
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:29).where.not(id:@choice1).first
      @choice3 = Choice.find(29)
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 30
      @choice1 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:30).first
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:30).where.not(id:@choice1).first
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:30).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.find(30)
    end
    if @question.id == 31
      @choice1 = Choice.find(31)
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).first
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 32
      @choice1 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:32).first
      @choice2 = Choice.find(32)
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 33
      @choice1 = Choice.find(33)
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).first
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 34
      @choice1 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:34).first
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:34).where.not(id:@choice1).first
      @choice3 = Choice.find(34)
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 35
      @choice1 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:21).first
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:21).where.not(id:@choice1).first
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:21).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.find(21)
    end
    if @question.id == 36
      @choice1 = Choice.find(36)
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).first
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 37
      @choice1 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:37).first
      @choice2 = Choice.find(37)
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 38
      @choice1 = Choice.find(38)
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).first
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 39
      @choice1 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:39).first
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:39).where.not(id:@choice1).first
      @choice3 = Choice.find(39)
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 40
      @choice1 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:40).first
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:40).where.not(id:@choice1).first
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:40).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.find(40)
    end
    if @question.id == 41
      @choice1 = Choice.find(41)
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).first
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 42
      @choice1 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:42).first
      @choice2 = Choice.find(42)
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 43
      @choice1 = Choice.find(43)
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).first
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 44
      @choice1 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:44).first
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:44).where.not(id:@choice1).first
      @choice3 = Choice.find(44)
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 45
      @choice1 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:45).first
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:45).where.not(id:@choice1).first
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:45).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.find(45)
    end
    if @question.id == 46
      @choice1 = Choice.find(46)
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).first
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 47
      @choice1 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:47).first
      @choice2 = Choice.find(47)
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 48
      @choice1 = Choice.find(48)
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).first
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 49
      @choice1 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:49).first
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:49).where.not(id:@choice1).first
      @choice3 = Choice.find(49)
      @choice4 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:@choice1).where.not(id:@choice2).where.not(id:@choice3).first
    end
    if @question.id == 50
      @choice1 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:50).first
      @choice2 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:50).where.not(id:@choice1).first
      @choice3 = Choice.where( 'id >= ?', rand(Choice.first.id..Choice.last.id) ).where.not(id:50).where.not(id:@choice1).where.not(id:@choice2).first
      @choice4 = Choice.find(50)
    end
  end
end
