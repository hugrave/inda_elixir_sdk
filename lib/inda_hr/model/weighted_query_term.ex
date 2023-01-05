# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.WeightedQueryTerm do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Term",
    :"Language",
    :"Weight"
  ]

  @type t :: %__MODULE__{
    :"Term" => String.t,
    :"Language" => String.t | nil,
    :"Weight" => float() | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.WeightedQueryTerm do
  def decode(value, _options) do
    value
  end
end

