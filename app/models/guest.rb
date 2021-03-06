class Guest < ActiveRecord::Base
  belongs_to :category
  has_many :phones, dependent: :destroy

  accepts_nested_attributes_for :phones, reject_if: :all_blank, allow_destroy: true

  validates :name,
            presence: {
              message: 'É necessário preencher o campo Nome para criar um Participante.'
            },
            format: {
              with: /[A-Za-z ]/,
              message: 'Apenas letras são permitidas no campo Nome.'
            }

  validates :age,
            presence: {
              message: 'É necessário preencher o campo Idade para criar um Participante.'
            },
            numericality: {
              less_than_or_equal_to: 120,
              only_integer: true,
              message: 'Apenas números inteiros abaixo de 120 são permitidos no campo Idade.'
            }

  validates :gender,
            presence: {
              message: 'É necessário selecionar um Gênero para criar um Participante.'
            }

  validates :street,
            presence: {
              message: 'É necessário preencher o campo Rua para criar um Participante.'
            },
            format: {
              with: /[A-Za-z0-9 ]/,
              message: 'Apenas letras e números são permitidas no campo Rua.'
            }

  validates :neighborhood,
            presence: {
              message: 'É necessário preencher o campo Bairro para criar um Participante.'
            },
            format: {
              with: /[A-Za-z0-9 ]/,
              message: 'Apenas letras e números são permitidas no campo Bairro.'
            }

  validates :cep,
            presence: {
              message: 'É necessário preencher o campo CEP para criar um Participante.'
            },
            format: {
              with: /[0-9]-/,
              message: 'Apenas números são permitidos no campo CEP.'
            },
            length: {
              minimum: 9,
              message: 'O CEP deve possuir 8 digitos.'
            }

  validates :street_number,
            presence: {
              message: 'É necessário preencher o campo Número para criar um Participante.'
            },
            numericality: {
              only_integer: true,
              message: 'Apenas números inteiros são permitidos no campo Número.'
            }

  validates :state,
            presence: {
              message: 'É necessário selecionar um Estado para criar um Participante.'
            }
end
