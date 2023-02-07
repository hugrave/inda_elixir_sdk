# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.OptionalPhoneNumber do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :CountryCode,
    :CountryDialling,
    :DialNumber
  ]

  @type t :: %__MODULE__{
    :CountryCode => String.t | nil,
    :CountryDialling => String.t | nil,
    :DialNumber => String.t | nil
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.OptionalPhoneNumber do
  def decode(value, _options) do
    value
  end
end
