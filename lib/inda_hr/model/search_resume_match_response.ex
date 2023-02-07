# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.SearchResumeMatchResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Total,
    :Hits,
    :SearchID,
    :Out
  ]

  @type t :: %__MODULE__{
    :Total => integer() | nil,
    :Hits => integer() | nil,
    :SearchID => String.t | nil,
    :Out => [IndaHr.Model.SearchResumeElement.t]
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.SearchResumeMatchResponse do
  import IndaHr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Out, :list, IndaHr.Model.SearchResumeElement, options)
  end
end
