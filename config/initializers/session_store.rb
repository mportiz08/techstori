# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_techstori_session',
  :secret      => '2639b71256b156ff889af8a29b0e0492ac1b830ea9967a5c0d6cf0fba4e3deaf6a110f0098dca09e70dc5098b62ebed6b6a6fea2f747dc0cc5e7fc10176779e6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
