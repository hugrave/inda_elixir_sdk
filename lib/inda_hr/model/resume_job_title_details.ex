# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.ResumeJobTitleDetails do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"TextPositions",
    :"RawValue",
    :"RawValues",
    :"IsValidated",
    :"EntityType",
    :"Score",
    :"Code"
  ]

  @type t :: %__MODULE__{
    :"TextPositions" => [inda_hr.Model.TextPosition.t] | nil,
    :"RawValue" => String.t | nil,
    :"RawValues" => [inda_hr.Model.TextDetails.t] | nil,
    :"IsValidated" => boolean() | nil,
    :"EntityType" => String.t | nil,
    :"Score" => float(),
    :"Code" => %{optional(String.t) => String.t} | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.ResumeJobTitleDetails do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"TextPositions", :list, inda_hr.Model.TextPosition, options)
    |> deserialize(:"RawValues", :list, inda_hr.Model.TextDetails, options)
  end
end

