# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.ResumeRequestsAttachments do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Pic",
    :"CV"
  ]

  @type t :: %__MODULE__{
    :"Pic" => inda_hr.Model.Image.t | nil,
    :"CV" => inda_hr.Model.Document.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.ResumeRequestsAttachments do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Pic", :struct, inda_hr.Model.Image, options)
    |> deserialize(:"CV", :struct, inda_hr.Model.Document, options)
  end
end

