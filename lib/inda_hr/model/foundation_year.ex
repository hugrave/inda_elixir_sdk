# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.FoundationYear do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Value
  ]

  @type t :: %__MODULE__{
    :Value => String.t
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.FoundationYear do
  def decode(value, _options) do
    value
  end
end
