# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.Range do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"GTE",
    :"LTE"
  ]

  @type t :: %__MODULE__{
    :"GTE" => float(),
    :"LTE" => float()
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.Range do
  def decode(value, _options) do
    value
  end
end

