class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #devise :database_authenticatable, :registerable,
   #      :recoverable, :rememberable, :trackable, :validatable

   has_many :aluguel

def self.authenticate (email, password)
    usuario = find_by_email(email)
    if usuario && usuario.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
        usuario
    else
        nil
    end
end


validates :nome, presence: true, length: { maximum: 50 }
   
  before_save { self.email = email.downcase }
  validates :email, presence: true, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create}, uniqueness: {case_sensitive: false}
   
  validates :password, presence: true, length: { minimum: 4 }
   
  has_secure_password
end
