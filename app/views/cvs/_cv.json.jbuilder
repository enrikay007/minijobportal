json.extract! cv, :id, :name, :profession, :image, :email, :education, :experiences, :created_at, :updated_at
json.url cv_url(cv, format: :json)