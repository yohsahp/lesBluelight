json.extract! check_in, :id, :check_in_time, :check_out_time, :crypt_check_code, :officer_id, :job_id, :created_at, :updated_at
json.url check_in_url(check_in, format: :json)