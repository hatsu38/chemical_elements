RSpec.describe ChemicalElements do
  it 'has a version number' do
    expect(ChemicalElements::VERSION).not_to be nil
  end

  shared_examples 'element is correct' do
    it { expect(element.name).to eq 'Helium' }
    it { expect(element.symbol).to eq 'He' }
    it { expect(element.atomic_num).to eq 2 }
    it { expect(element.atomic_amount).to eq 4.0026 }
  end

  describe '.all' do
    describe 'size' do
      let(:elements) { ChemicalElements::PeriodicTable.all }
      it { expect(elements.size).to eq 118 }
    end
    describe 'element' do
      let(:element) { ChemicalElements::PeriodicTable.all[1] }
      it_behaves_like 'element is correct'
    end
  end

  describe '.find' do
    let(:element) { ChemicalElements::PeriodicTable.find('He') }
    it_behaves_like 'element is correct'
  end

  describe '.find_by' do
    context 'name' do
      context 'Upcase' do
        let(:element) { ChemicalElements::PeriodicTable.find_by(name: 'HELIUM') }
        it_behaves_like 'element is correct'
      end

      context 'Downcase' do
        let(:element) { ChemicalElements::PeriodicTable.find_by(name: 'helium') }
        it_behaves_like 'element is correct'
      end

      context 'Mix' do
        let(:element) { ChemicalElements::PeriodicTable.find_by(name: 'HelIum') }
        it_behaves_like 'element is correct'
      end
    end
    context 'symbol' do
      context 'Upcase' do
        let(:element) { ChemicalElements::PeriodicTable.find_by(symbol: 'HE') }
        it_behaves_like 'element is correct'
      end

      context 'Downcase' do
        let(:element) { ChemicalElements::PeriodicTable.find_by(symbol: 'he') }
        it_behaves_like 'element is correct'
      end

      context 'Mix' do
        let(:element) { ChemicalElements::PeriodicTable.find_by(symbol: 'He') }
        it_behaves_like 'element is correct'
      end
    end
    context 'atomic_num' do
      let(:element) { ChemicalElements::PeriodicTable.find_by(atomic_num: 2) }
      it_behaves_like 'element is correct'
    end
    context 'atomic_amount' do
      let(:element) { ChemicalElements::PeriodicTable.find_by(atomic_amount: 4.0026) }
      it_behaves_like 'element is correct'
    end
  end
end
