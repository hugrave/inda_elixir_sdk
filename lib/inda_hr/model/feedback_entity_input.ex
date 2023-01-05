# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.FeedbackEntityInput do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"InputLanguage",
    :"OutputLanguage",
    :"EntityType",
    :"AllowedOutputs",
    :"ID"
  ]

  @type t :: %__MODULE__{
    :"InputLanguage" => String.t | nil,
    :"OutputLanguage" => String.t | nil,
    :"EntityType" => String.t,
    :"AllowedOutputs" => [inda_hr.Model.AllowedOutput.t],
    :"ID" => inda_hr.Model.Id.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.FeedbackEntityInput do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"AllowedOutputs", :list, inda_hr.Model.AllowedOutput, options)
    |> deserialize(:"ID", :struct, inda_hr.Model.Id, options)
  end
end

