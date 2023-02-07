# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.QueryFilters do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Must,
    :Should,
    :MustNot,
    :Filter
  ]

  @type t :: %__MODULE__{
    :Must => [IndaHr.Model.FilterField.t] | nil,
    :Should => [IndaHr.Model.FilterField.t] | nil,
    :MustNot => [IndaHr.Model.FilterField.t] | nil,
    :Filter => [IndaHr.Model.FilterField.t] | nil
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.QueryFilters do
  import IndaHr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Must, :list, IndaHr.Model.FilterField, options)
    |> deserialize(:Should, :list, IndaHr.Model.FilterField, options)
    |> deserialize(:MustNot, :list, IndaHr.Model.FilterField, options)
    |> deserialize(:Filter, :list, IndaHr.Model.FilterField, options)
  end
end
