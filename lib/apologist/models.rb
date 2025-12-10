# frozen_string_literal: true

module Apologist
  [Apologist::Internal::Type::BaseModel, *Apologist::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, Apologist::Internal::AnyHash) } }
  end

  Apologist::Internal::Util.walk_namespaces(Apologist::Models).each do |mod|
    case mod
    in Apologist::Internal::Type::Enum | Apologist::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  Apologist::Internal::Util.walk_namespaces(Apologist::Models)
                           .lazy
                           .grep(Apologist::Internal::Type::Union)
                           .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  PetAPI = Apologist::Models::PetAPI

  PetCreateParams = Apologist::Models::PetCreateParams

  PetDeleteParams = Apologist::Models::PetDeleteParams

  PetFindByStatusParams = Apologist::Models::PetFindByStatusParams

  PetFindByTagsParams = Apologist::Models::PetFindByTagsParams

  PetRetrieveParams = Apologist::Models::PetRetrieveParams

  PetUpdateParams = Apologist::Models::PetUpdateParams

  PetUpdateWithFormParams = Apologist::Models::PetUpdateWithFormParams

  PetUploadImageParams = Apologist::Models::PetUploadImageParams

  Store = Apologist::Models::Store

  StoreListInventoryParams = Apologist::Models::StoreListInventoryParams

  UserAPI = Apologist::Models::UserAPI

  UserCreateParams = Apologist::Models::UserCreateParams

  UserCreateWithListParams = Apologist::Models::UserCreateWithListParams

  UserDeleteParams = Apologist::Models::UserDeleteParams

  UserLoginParams = Apologist::Models::UserLoginParams

  UserLogoutParams = Apologist::Models::UserLogoutParams

  UserRetrieveParams = Apologist::Models::UserRetrieveParams

  UserUpdateParams = Apologist::Models::UserUpdateParams
end
