json.extract! job, :id, :date, :start_time, :end_time, :crypt_code, :location_id, :created_at, :updated_at
json.url job_url(job, format: :json)