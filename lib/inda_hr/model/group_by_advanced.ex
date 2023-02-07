# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.GroupByAdvanced do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Advanced,
    :NotAdvanced
  ]

  @type t :: %__MODULE__{
    :Advanced => IndaHr.Model.SlimBaseResponse.t | nil,
    :NotAdvanced => IndaHr.Model.SlimBaseResponse.t | nil
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.GroupByAdvanced do
  import IndaHr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Advanced, :struct, IndaHr.Model.SlimBaseResponse, options)
    |> deserialize(:NotAdvanced, :struct, IndaHr.Model.SlimBaseResponse, options)
  end
end
