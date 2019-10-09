class Transfer
  # your code here
  attr_reader :
  
  def initialize
    @transfer = self
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = 50
  end
end
