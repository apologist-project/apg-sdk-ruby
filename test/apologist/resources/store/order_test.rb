# frozen_string_literal: true

require_relative "../../test_helper"

class Apologist::Test::Resources::Store::OrderTest < Apologist::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @apologist.store.order.create

    assert_pattern do
      response => Apologist::Store::StoreOrder
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        complete: Apologist::Internal::Type::Boolean | nil,
        pet_id: Integer | nil,
        quantity: Integer | nil,
        ship_date: Time | nil,
        status: Apologist::Store::StoreOrder::Status | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @apologist.store.order.retrieve(0)

    assert_pattern do
      response => Apologist::Store::StoreOrder
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        complete: Apologist::Internal::Type::Boolean | nil,
        pet_id: Integer | nil,
        quantity: Integer | nil,
        ship_date: Time | nil,
        status: Apologist::Store::StoreOrder::Status | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @apologist.store.order.delete(0)

    assert_pattern do
      response => nil
    end
  end
end
