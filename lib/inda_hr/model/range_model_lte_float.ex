# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.RangeModelLteFloat do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :LTE
  ]

  @type t :: %__MODULE__{
    :LTE => float()
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.RangeModelLteFloat do
  def decode(value, _options) do
    value
  end
end
