Devise.setup do |config|
  config.authentication_keys = [:matricule]
  config.case_insensitive_keys = [:matricule]
  config.strip_whitespace_keys = [:matricule]
end