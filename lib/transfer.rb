class Transfer
  # your code here
  attr_reader :amount, :sender, :receiver
  attr_accessor :status
  
  def initialize
    @transfer = self
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
  
  
end
