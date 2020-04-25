require_relative 'namaz'
require 'faker'

RSpec.describe 'Namaz' do
  let(:lat) { Faker::Address.latitude }
  let(:long) { Faker::Address.longitude }

  %w(sabah ikindi salah).each do |time|
    it "should calculate time for #{time} for lat, long, alt" do
      calculator = Namaz.new(Date.new(2010, 3, 8), lat, long)
      expect(calculator.time_for(time)).to eq(Time.new('2010-03-08'))
    end
  end
end
