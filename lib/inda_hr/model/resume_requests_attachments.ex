# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.ResumeRequestsAttachments do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Pic,
    :CV
  ]

  @type t :: %__MODULE__{
    :Pic => IndaHr.Model.Image.t | nil,
    :CV => IndaHr.Model.Document.t
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.ResumeRequestsAttachments do
  import IndaHr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Pic, :struct, IndaHr.Model.Image, options)
    |> deserialize(:CV, :struct, IndaHr.Model.Document, options)
  end
end
