require_relative '../triangle_classifier'
describe TriangleClassifier do
  it 'has a classify method ' do
    classfier = TriangleClassifier.new
    expect(classfier).to respond_to :classify
  end

  context 'invalid inputs ' do
    it 'raises an Arugment error if parameters are missing' do
      classifier = TriangleClassifier.new
      expect{classifier.classify}.to raise_error(ArgumentError)
    end

    it 'raises an Argument error if sum of two sides is not greater than the third' do
      classifier = TriangleClassifier.new
      expect{classifier.classify(1,1,3)}.to raise_error(ArgumentError)
    end
  end
end
