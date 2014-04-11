class HeartbleedController < ApplicationController
  def index
    cookies[:a] = {
      value: "A",
    }
    cookies[:httponly] = {
      value: "HttpOnly",
      httponly: true,
    }
    cookies[:secure] = {
      value: "Secure",
      secure: true,
    }
    cookies[:httponlysecure] = {
      value: "HttpOnlySecure",
      httponly: true,
      secure: true,
    }
  end
end
