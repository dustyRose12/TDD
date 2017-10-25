require 'rspec'

class ChangeMachine

  def change(cents)
    output_array = []

    if cents < 5
      cents.times do 
         output_array << 1
      end
    elsif cents == 5
      output_array << 5

    # elsif cents / 5 > 1
      
    end



      
    return output_array




  end
end

RSpec.describe ChangeMachine do
  describe '#change' do
    let(:change) { ChangeMachine.new}

    it 'should return [1] if given 1' do
      expect(change.change(1)).to match_array([1])
    end

    it 'should return [1, 1] if given 2' do
      expect(change.change(2)).to match_array([1, 1])
    end

    it 'should return [1, 1, 1] if given 3' do
      expect(change.change(3)).to match_array([1, 1, 1])
    end

      it 'should return [1, 1, 1, 1] if given 4' do
      expect(change.change(4)).to match_array([1, 1, 1, 1])
    end

      it 'should return [5] if given 5' do
      expect(change.change(5)).to match_array([5])
    end

     it 'should return [5, 1] if given 6' do
          expect(change.change(6)).to match_array([5, 1])
        end

    
  end
end
