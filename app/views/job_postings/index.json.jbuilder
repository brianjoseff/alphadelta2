json.array!(@job_postings) do |job_posting|
  json.extract! job_posting, :id, :position, :application_instructions, :expiration_date, :job_description, :job_category, :location
  json.url job_posting_url(job_posting, format: :json)
end
