# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.Overview do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Name",
    :"AltName",
    :"Acronym",
    :"Description",
    :"Founded",
    :"Motto",
    :"Colours",
    :"Rank"
  ]

  @type t :: %__MODULE__{
    :"Name" => inda_hr.Model.UniversityAdmissionsValueModelStr.t,
    :"AltName" => inda_hr.Model.UniversityAdmissionsValueModelStr.t | nil,
    :"Acronym" => inda_hr.Model.UniversityAdmissionsValueModelStr.t | nil,
    :"Description" => inda_hr.Model.UniversityAdmissionsValueModelStr.t | nil,
    :"Founded" => inda_hr.Model.ValueModelUnionDatetimeDate.t | nil,
    :"Motto" => inda_hr.Model.UniversityAdmissionsValueModelStr.t | nil,
    :"Colours" => inda_hr.Model.UniversityAdmissionsValueModelStr.t | nil,
    :"Rank" => inda_hr.Model.Rank.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.Overview do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Name", :struct, inda_hr.Model.UniversityAdmissionsValueModelStr, options)
    |> deserialize(:"AltName", :struct, inda_hr.Model.UniversityAdmissionsValueModelStr, options)
    |> deserialize(:"Acronym", :struct, inda_hr.Model.UniversityAdmissionsValueModelStr, options)
    |> deserialize(:"Description", :struct, inda_hr.Model.UniversityAdmissionsValueModelStr, options)
    |> deserialize(:"Founded", :struct, inda_hr.Model.ValueModelUnionDatetimeDate, options)
    |> deserialize(:"Motto", :struct, inda_hr.Model.UniversityAdmissionsValueModelStr, options)
    |> deserialize(:"Colours", :struct, inda_hr.Model.UniversityAdmissionsValueModelStr, options)
    |> deserialize(:"Rank", :struct, inda_hr.Model.Rank, options)
  end
end

