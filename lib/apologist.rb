# frozen_string_literal: true

# Standard libraries.
# rubocop:disable Lint/RedundantRequireStatement
require "English"
require "base64"
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "openssl"
require "pathname"
require "rbconfig"
require "securerandom"
require "set"
require "stringio"
require "time"
require "uri"
# rubocop:enable Lint/RedundantRequireStatement

# We already ship the preferred sorbet manifests in the package itself.
# `tapioca` currently does not offer us a way to opt out of unnecessary compilation.
if Object.const_defined?(:Tapioca) &&
   caller.chain([$PROGRAM_NAME]).chain(ARGV).any?(/tapioca/) &&
   ARGV.none?(/dsl/)
  return
end

# Gems.
require "connection_pool"

# Package files.
require_relative "apologist/version"
require_relative "apologist/internal/util"
require_relative "apologist/internal/type/converter"
require_relative "apologist/internal/type/unknown"
require_relative "apologist/internal/type/boolean"
require_relative "apologist/internal/type/file_input"
require_relative "apologist/internal/type/enum"
require_relative "apologist/internal/type/union"
require_relative "apologist/internal/type/array_of"
require_relative "apologist/internal/type/hash_of"
require_relative "apologist/internal/type/base_model"
require_relative "apologist/internal/type/base_page"
require_relative "apologist/internal/type/request_parameters"
require_relative "apologist/internal"
require_relative "apologist/request_options"
require_relative "apologist/file_part"
require_relative "apologist/errors"
require_relative "apologist/internal/transport/base_client"
require_relative "apologist/internal/transport/pooled_net_requester"
require_relative "apologist/client"
require_relative "apologist/models/pet"
require_relative "apologist/models/store/order"
require_relative "apologist/models/user"
require_relative "apologist/models/pet_create_params"
require_relative "apologist/models/pet_delete_params"
require_relative "apologist/models/pet_find_by_status_params"
require_relative "apologist/models/pet_find_by_status_response"
require_relative "apologist/models/pet_find_by_tags_params"
require_relative "apologist/models/pet_find_by_tags_response"
require_relative "apologist/models/pet_retrieve_params"
require_relative "apologist/models/pet_update_params"
require_relative "apologist/models/pet_update_with_form_params"
require_relative "apologist/models/pet_upload_image_params"
require_relative "apologist/models/pet_upload_image_response"
require_relative "apologist/models/store/order_create_params"
require_relative "apologist/models/store/order_delete_params"
require_relative "apologist/models/store/order_retrieve_params"
require_relative "apologist/models/store_list_inventory_params"
require_relative "apologist/models/store_list_inventory_response"
require_relative "apologist/models/user_create_params"
require_relative "apologist/models/user_create_with_list_params"
require_relative "apologist/models/user_delete_params"
require_relative "apologist/models/user_login_params"
require_relative "apologist/models/user_login_response"
require_relative "apologist/models/user_logout_params"
require_relative "apologist/models/user_retrieve_params"
require_relative "apologist/models/user_update_params"
require_relative "apologist/models"
require_relative "apologist/resources/pet"
require_relative "apologist/resources/store"
require_relative "apologist/resources/store/order"
require_relative "apologist/resources/user"
