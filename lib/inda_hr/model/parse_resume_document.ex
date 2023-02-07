# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.ParseResumeDocument do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :PlainText,
    :Language,
    :Filename,
    :FileExt
  ]

  @type t :: %__MODULE__{
    :PlainText => String.t | nil,
    :Language => String.t | nil,
    :Filename => String.t | nil,
    :FileExt => String.t | nil
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.ParseResumeDocument do
  def decode(value, _options) do
    value
  end
end
