# 1. Write Player Examples

require_relative 'player'

# Testing behavior of objects > Player
describe Player do  # Describe method defines RSpec calls an example                      group > takes the name of the group as a string                     or, as we've done here, you can give it a class                     name
  
  it "Has capitalized name" do
    player = Player.new("quoc", 120)
    
    expect(player.name).to eq("Quoc")
  end
  
  it "has an initial health" do
    player = Player.new("Quoc", 120)
    
    expect(player.health).to eq(120)
  end
  
  it "has a string representation" do
    player1 = Player.new("stuboki", 100)
    
    expect(player1.to_s).to eq("I'm Stuboki with a health of 100 and a score of 107.")    
  end

  it "computes a score as the sum of its health and length of name" do
     player2 = Player.new("quoc", 100)
     
     expect(player2.score).to eq(104)
  end

  it "increases health by 15 when w00ted" do
    initial_health = 100
    player3 = Player.new("an", initial_health )
    player3.w00t
    
    expect(player3.health).to eq(initial_health + 15)
  end

  it "decreases health by 10 when blammed" do
    initial_health = 100 
    player4 = Player.new("stub4ever", initial_health)
    player4.blam
    
    expect(player4.health).to eq(initial_health - 10)
  end
end


# 2. Remove Duplication
require_relative 'player'

# Testing behavior of objects > Player
describe Player do  # Describe method defines RSpec calls an example                     group > takes the name of the group as a string                    or, as we've done here, you can give it a class                    name
  
  # before method that runs once before each of the examples.
  before do
    @initial_health = 100
    @player = Player.new("stuboki", @initial_health)
  end
  
  # allow to run the spec, you should only see green dots on output. 
  before do
    $stdout = StringIO.new
  end
  
  it "Has capitalized name" do 
    expect(@player.name).to eq("Stuboki")
  end
  
  it "has an initial health" do
    expect(@player.health).to eq(100)
  end
  
  it "has a string representation" do
    expect(@player.to_s).to eq("I'm Stuboki with a health of 100 and a score of 107.")    
  end

  it "computes a score as the sum of its health and length of name" do
     expect(@player.score).to eq(107)
  end

  it "increases health by 15 when w00ted" do
    @player.w00t
    
    expect(@player.health).to eq(@initial_health + 15)
  end

  it "decreases health by 10 when blammed" do
    @player.blam
    
    expect(@player.health).to eq(@initial_health - 10)
  end
  
end