# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.OptionalJobShift do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Details",
    :"Type",
    :"Frequency"
  ]

  @type t :: %__MODULE__{
    :"Details" => inda_hr.Model.BoolBaseModel.t | nil,
    :"Type" => inda_hr.Model.OptionalJobShiftType.t | nil,
    :"Frequency" => inda_hr.Model.Frequency2.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.OptionalJobShift do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Details", :struct, inda_hr.Model.BoolBaseModel, options)
    |> deserialize(:"Type", :struct, inda_hr.Model.OptionalJobShiftType, options)
    |> deserialize(:"Frequency", :struct, inda_hr.Model.Frequency2, options)
  end
end

