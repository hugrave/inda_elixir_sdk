# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.CacheDeletion do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Deleted,
    :SearchID
  ]

  @type t :: %__MODULE__{
    :Deleted => boolean(),
    :SearchID => String.t
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.CacheDeletion do
  def decode(value, _options) do
    value
  end
end
