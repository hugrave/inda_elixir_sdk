# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.RangeModelGteInt do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :GTE
  ]

  @type t :: %__MODULE__{
    :GTE => integer()
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.RangeModelGteInt do
  def decode(value, _options) do
    value
  end
end
