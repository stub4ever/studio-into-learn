require_relative 'user'

describe User do
  
  it "has user an capitalize " do
    user1 = User.new("stuboki", "Skydive", 30)
    
    expect(user1.user).to eq("Stuboki")
  end
  
  it "has an empty string representation" do
    user1 = User.new("stuboki", "Skydive", 30)
    
    expect(user1.to_s).to eq("")
  end
  
  it "has an thumbs up an activity with increment +1" do
    initial_rates = 10
    user1 = User.new("stuboki", "Skydive", initial_rates)
    puts user1.thumbs_up
    
    expect(user1.rates).to eq(initial_rates + 1)
  end
    
  it "has an thumbs down an activity with decrement -1" do
    initial_rates = 10
    user1 = User.new("stuboki", "Skydive", initial_rates)
    puts user1.thumbs_down
    
    expect(user1.rates).to eq(initial_rates - 1)
  end
  
  it "has to show activity" do 
    user1 = User.new("stuboki", "Skydive")
    
    expect(user1.show_activity).to eq("Skydive")
  end
    
  
end