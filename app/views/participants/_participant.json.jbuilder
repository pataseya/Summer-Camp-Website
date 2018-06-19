json.extract! participant, :id, :name, :age, :sex, :allergies, :parent, :parentemail, :notes, :created_at, :updated_at
json.url participant_url(participant, format: :json)
