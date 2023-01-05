# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.Asset do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Name",
    :"Description",
    :"Sector",
    :"Tags"
  ]

  @type t :: %__MODULE__{
    :"Name" => inda_hr.Model.BaseLocationsValueModelStrictStr.t,
    :"Description" => inda_hr.Model.BaseLocationsValueModelStrictStr.t | nil,
    :"Sector" => inda_hr.Model.BaseLocationsValueModelStrictStr.t | nil,
    :"Tags" => [String.t] | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.Asset do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Name", :struct, inda_hr.Model.BaseLocationsValueModelStrictStr, options)
    |> deserialize(:"Description", :struct, inda_hr.Model.BaseLocationsValueModelStrictStr, options)
    |> deserialize(:"Sector", :struct, inda_hr.Model.BaseLocationsValueModelStrictStr, options)
  end
end

