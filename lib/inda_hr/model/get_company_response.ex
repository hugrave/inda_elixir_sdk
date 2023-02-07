# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.GetCompanyResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :ID,
    :Data,
    :Metadata
  ]

  @type t :: %__MODULE__{
    :ID => String.t,
    :Data => IndaHr.Model.CompanyCommonData.t,
    :Metadata => IndaHr.Model.PublicMetadataModel.t
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.GetCompanyResponse do
  import IndaHr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Data, :struct, IndaHr.Model.CompanyCommonData, options)
    |> deserialize(:Metadata, :struct, IndaHr.Model.PublicMetadataModel, options)
  end
end
