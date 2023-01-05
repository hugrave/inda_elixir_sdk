# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.MatchResumeEvidenceSeniority do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"HighestSeniorityLevelCode",
    :"Score"
  ]

  @type t :: %__MODULE__{
    :"HighestSeniorityLevelCode" => inda_hr.Model.SeniorityLevelCode.t | nil,
    :"Score" => float()
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.MatchResumeEvidenceSeniority do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"HighestSeniorityLevelCode", :struct, inda_hr.Model.SeniorityLevelCode, options)
  end
end

