# frozen_string_literal: true

# Custom gemspec configuration file
# This file is automatically loaded by the main gemspec file. The 'spec' variable is available
# in this context from the main gemspec file. You can modify this file to add custom metadata,
# dependencies, or other gemspec configurations. If you do make changes to this file, you will
# need to add it to the .fernignore file to prevent your changes from being overwritten.

def add_custom_gemspec_data(spec)
  spec.authors = ["Apologist"]
  spec.email = ["support@apologist.ai"]
  spec.homepage = "https://github.com/apologist-project/apg-sdk-ruby"
  spec.license = "MIT"
  spec.metadata["homepage_uri"] = "https://docs.apologist.ai"
  spec.metadata["source_code_uri"] = "https://github.com/apologist-project/apg-sdk-ruby"
  spec.metadata["documentation_uri"] = "https://docs.apologist.ai"
end
