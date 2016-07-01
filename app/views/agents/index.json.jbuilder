json.array!(@agents) do |agent|
  json.extract! agent, :id, :first_name, :last_name, :email, :agent_mls, :description, :image_url, :office_mls, :phone_number, :country_code
  json.url agent_url(agent, format: :json)
end
