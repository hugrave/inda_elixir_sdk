# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.JobadContactInfoPersonName do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Prefix,
    :GivenName,
    :MiddleNames,
    :FamilyName,
    :Suffix,
    :FormattedName
  ]

  @type t :: %__MODULE__{
    :Prefix => IndaHr.Model.JobadContactInfoPrefix.t | nil,
    :GivenName => IndaHr.Model.JobadContactInfoName.t | nil,
    :MiddleNames => [IndaHr.Model.JobadContactInfoName.t] | nil,
    :FamilyName => IndaHr.Model.JobadContactInfoName.t | nil,
    :Suffix => IndaHr.Model.JobadContactInfoSuffix.t | nil,
    :FormattedName => IndaHr.Model.JobadContactInfoName.t | nil
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.JobadContactInfoPersonName do
  import IndaHr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Prefix, :struct, IndaHr.Model.JobadContactInfoPrefix, options)
    |> deserialize(:GivenName, :struct, IndaHr.Model.JobadContactInfoName, options)
    |> deserialize(:MiddleNames, :list, IndaHr.Model.JobadContactInfoName, options)
    |> deserialize(:FamilyName, :struct, IndaHr.Model.JobadContactInfoName, options)
    |> deserialize(:Suffix, :struct, IndaHr.Model.JobadContactInfoSuffix, options)
    |> deserialize(:FormattedName, :struct, IndaHr.Model.JobadContactInfoName, options)
  end
end
