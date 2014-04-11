class HeartbleedController < ApplicationController
  def index
    cookies[:a] = {
      value: "A",
      domain: :all,
    }
    cookies[:httponly] = {
      value: "HttpOnly",
      domain: :all,
      httponly: true,
    }
    cookies[:secure] = {
      value: "Secure",
      domain: :all,
      secure: true,
    }
    cookies[:httponlysecure] = {
      value: "HttpOnlySecure",
      domain: :all,
      httponly: true,
      secure: true,
    }
  end
end
