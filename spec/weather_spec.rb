require 'Weather.rb'
describe Weather do
  it { is_expected.to respond_to :random_number }

  it 'random number generator' do
    weatheroutcome = Weather.new
    weatheroutcome.stub(:random_number) { 345678 }
    expect(weatheroutcome.random_number).to eq(345678)
  end

    it { is_expected.to respond_to :weather_outcome }

    it 'random number generator' do
      weatheroutcome = Weather.new
      weatheroutcome.stub(:random_number) { 1 }
      expect(weatheroutcome.weather_outcome).to eq("Sunny")
    end

end
