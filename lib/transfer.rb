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
  
  def valid?
    sender.valid? && receiver.valid?
  end
  
  def execute_transaction
    if valid? && sender.balance > amount && self.status == "pending"
      sender.balance -= amount
      self.status = "complete"
    else
      reject_transfer
    end
  end
  
  def reverse_transfer
    if valid? && receiver.balance > amount && self.status == "complete"
      receiver.balance -= amount
      sender.balance += amount
      self.status - "reversed"
    else
      reject_transfer
    end
  end
end
