require 'spec_helper'

describe 'expect_json' do
	it 'should ensure correct json values' do
		mock_get('simple_get')
		get '/simple_get'
		expect_json({name: "Alex", age: 32 })
	end

	it 'should fail when incorrect json is tested' do
		mock_get('simple_get')
		get '/simple_get'
		expect{expect_json({bad: "data"})}.to raise_error		
	end
end
