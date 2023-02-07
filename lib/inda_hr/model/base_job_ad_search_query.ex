# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.BaseJobAdSearchQuery do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Application,
    :JobAd
  ]

  @type t :: %__MODULE__{
    :Application => IndaHr.Model.QueryFilters.t | nil,
    :JobAd => IndaHr.Model.QueryFilters.t | nil
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.BaseJobAdSearchQuery do
  import IndaHr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Application, :struct, IndaHr.Model.QueryFilters, options)
    |> deserialize(:JobAd, :struct, IndaHr.Model.QueryFilters, options)
  end
end
