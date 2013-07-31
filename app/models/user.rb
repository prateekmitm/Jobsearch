class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :admin,:email, :password,:password_confirmation,:resume, :name, :mobile_number
  has_attached_file :resume

def update_with_password(params={}) 
  if params[:password].blank? 
    params.delete(:password) 
    params.delete(:password_confirmation) if params[:password_confirmation].blank? 
  end 
  update_attributes(params) 
end

end
