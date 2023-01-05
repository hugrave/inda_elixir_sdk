# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.JobAdSalary do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Amount",
    :"Currency",
    :"Frequency",
    :"Type"
  ]

  @type t :: %__MODULE__{
    :"Amount" => inda_hr.Model.RangeFloat.t,
    :"Currency" => inda_hr.Model.Currency.t,
    :"Frequency" => inda_hr.Model.Frequency.t | nil,
    :"Type" => inda_hr.Model.BaseSalariesType.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.JobAdSalary do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Amount", :struct, inda_hr.Model.RangeFloat, options)
    |> deserialize(:"Currency", :struct, inda_hr.Model.Currency, options)
    |> deserialize(:"Frequency", :struct, inda_hr.Model.Frequency, options)
    |> deserialize(:"Type", :struct, inda_hr.Model.BaseSalariesType, options)
  end
end

