# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.MatchResumeEvidenceJobTitle do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Score",
    :"JobTitle"
  ]

  @type t :: %__MODULE__{
    :"Score" => float(),
    :"JobTitle" => inda_hr.Model.ResumeJobTitle.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.MatchResumeEvidenceJobTitle do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"JobTitle", :struct, inda_hr.Model.ResumeJobTitle, options)
  end
end

