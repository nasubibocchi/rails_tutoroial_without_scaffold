class ApplicationController < ActionController::Base
    protect_from_forgery with: :exceotion

    def hello
        render html: "hello, world!"
    end
end
