# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.FinalGradeValue do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :ScoreText,
    :ScoreNumeric
  ]

  @type t :: %__MODULE__{
    :ScoreText => String.t | nil,
    :ScoreNumeric => integer() | nil
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.FinalGradeValue do
  def decode(value, _options) do
    value
  end
end
