class HeartbleedController < ApplicationController
  def index
    cookies[:a1] = {
      value: "A1",
    }
    cookies[:httponly1] = {
      value: "HttpOnly1",
      httponly: true,
    }
    cookies[:secure1] = {
      value: "Secure1",
      secure: true,
    }
    cookies[:httponlysecure1] = {
      value: "HttpOnlySecure1",
      httponly: true,
      secure: true,
    }

    # Cookies domain: .herokuapp.com
    cookies[:a2] = {
      value: "A2",
      domain: :all,
    }
    cookies[:httponly2] = {
      value: "HttpOnly2",
      domain: :all,
      httponly: true,
    }
    cookies[:secure2] = {
      value: "Secure2",
      domain: :all,
      secure: true,
    }
    cookies[:httponlysecure2] = {
      value: "HttpOnlySecure2",
      domain: :all,
      httponly: true,
      secure: true,
    }

    # Cookies domain: mysterious-journey-5029
    domain = 'mysterious-journey-5029.herokuapp.com'
    cookies[:a3] = {
      value: "A3",
      domain: domain,
    }
    cookies[:httponly3] = {
      value: "HttpOnly3",
      domain: domain,
      httponly: true,
    }
    cookies[:secure3] = {
      value: "Secure3",
      domain: domain,
      secure: true,
    }
    cookies[:httponlysecure3] = {
      value: "HttpOnlySecure3",
      domain: domain,
      httponly: true,
      secure: true,
    }
  end
end
