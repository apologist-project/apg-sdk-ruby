# frozen_string_literal: true

require_relative "../test_helper"

class Apologist::Test::Resources::StoreTest < Apologist::Test::ResourceTest
  def test_list_inventory
    skip("Prism tests are disabled")

    response = @apologist.store.list_inventory

    assert_pattern do
      response => ^(Apologist::Internal::Type::HashOf[Integer])
    end
  end
end
