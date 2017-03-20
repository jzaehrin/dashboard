class AuthenticateUser
  def initialize(email, password)
    @email = email
    @password = password
  end

  def call
    JsonWebToken.encode(user_id: user.id, is_admin: user.is_admin) if user
  end

  private

  attr_accessor :email, :password

  def user
    user = User.find_by_email(email)

    return user if user && user.authenticate(password)

    raise 'invalid credentials'
  end
end
