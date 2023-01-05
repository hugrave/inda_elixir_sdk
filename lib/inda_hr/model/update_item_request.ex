# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.UpdateItemRequest do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Data",
    :"Metadata",
    :"Attachments"
  ]

  @type t :: %__MODULE__{
    :"Data" => inda_hr.Model.ResumeCommonData.t | nil,
    :"Metadata" => inda_hr.Model.Metadata.t | nil,
    :"Attachments" => inda_hr.Model.CvAttachmentDocument.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.UpdateItemRequest do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Data", :struct, inda_hr.Model.ResumeCommonData, options)
    |> deserialize(:"Metadata", :struct, inda_hr.Model.Metadata, options)
    |> deserialize(:"Attachments", :struct, inda_hr.Model.CvAttachmentDocument, options)
  end
end

