# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.WorkActivityComparisonRequest do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :OriginOccupation,
    :DestinationOccupation,
    :ESCOLevel
  ]

  @type t :: %__MODULE__{
    :OriginOccupation => String.t,
    :DestinationOccupation => String.t,
    :ESCOLevel => integer()
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.WorkActivityComparisonRequest do
  def decode(value, _options) do
    value
  end
end
