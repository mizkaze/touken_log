class GuestsController < ApplicationController

  def new_guest
    random_value = SecureRandom.hex(10)
    user = User.create!(name: 'ゲスト',
                        email: "#{random_value}@guest.com",
                        kind: 'guest') do |user|
      user.password = SecureRandom.hex(10)
    end
    sign_in user
    redirect_to root_path, notice: 'ゲストユーザーとしてログインしました'
  end


end
