# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.SkillDetails do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Category
  ]

  @type t :: %__MODULE__{
    :Category => String.t
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.SkillDetails do
  def decode(value, _options) do
    value
  end
end
