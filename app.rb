require 'sinatra'

get '/' do
  'you\'re not being bad enough ... try url /500'
end

get '/:rc' do
  rc = params[:rc]
  body_msg = "this page body goes with a #{rc} status code from bad-server\n"

  [rc.to_i, nil, [body_msg]]
end
