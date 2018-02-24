Given("valid credentials") do
  @user = FactoryBot.create(:user)
  @valid_credentials = {"email": @user.email,"password": @user.password }
end

When("I request login with valid details") do
  header 'Accept', 'application/json'
  post '/api/v1/login', @valid_credentials
end

Then("I need to be logged") do
  response = JSON last_response.body
  expected_response = @user.as_json(only: %i[id created_at updated_at email])
  expect(response).to eq({"response": expected_response,
                          "code":0,
                          "status":"success"}.as_json)
end

Given("invalid credentials") do
  @invalid_credentials = {"email": "foo@example.com","password": "foobar" }
end

When("I request login with invalid details") do
  header 'Accept', 'application/json'
  post '/api/v1/login', @invalid_credentials
end

Then("I need to see error message") do
  response = JSON last_response.body
  expect(response)
    .to eq({"code":2,
            "status":"failure",
            "message":"Could  not validate user/password",
            "description":"Please check if your email/password are correct."}
    .as_json)
end
