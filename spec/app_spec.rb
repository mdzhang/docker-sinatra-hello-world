require File.expand_path '../spec_helper.rb', __FILE__

describe 'Application' do
  it 'redirects / to health page' do
    get  '/'
    expect(last_response.redirect?).to be true
    follow_redirect!
    expect(last_request.path).to eq '/health'
  end

  it 'returns OK when accessing health page' do
    get '/health'
    expect(last_response).to be_ok
    expect(last_response.body).to eq 'OK'
    expect(last_response.status).to be 200
  end
end