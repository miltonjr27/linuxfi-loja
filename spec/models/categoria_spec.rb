#encoding : utf-8
require( File.join( File.dirname(__FILE__),'..', 'spec_helper') )

describe Categoria do

  context 'validações' do

    it { should validate_presence_of( :nome ) }

    context 'com categoria salva no banco' do

      before do
        @categoria = FactoryGirl.create(:categoria)
      end

      after do

      end

      it { should validate_uniqueness_of (:nome)}

    end

  end

end