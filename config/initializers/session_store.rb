# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mustache-ride_session',
  :secret      => '3aba96406eaff94077e78e63bf2eef0d8e7f0b361356dec19863cf1bdaa726e4e2a82ed8a737e3fdf67bf113e5fec01910e3cecec303bdb11442c3379fe4f0fc'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
