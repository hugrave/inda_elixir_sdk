# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.BaseResumeMatchingQuery do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :QueryFilters
  ]

  @type t :: %__MODULE__{
    :QueryFilters => IndaHr.Model.QueryFilters.t | nil
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.BaseResumeMatchingQuery do
  import IndaHr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:QueryFilters, :struct, IndaHr.Model.QueryFilters, options)
  end
end
