# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.ApplicationId do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :ResumeID,
    :JobAdID
  ]

  @type t :: %__MODULE__{
    :ResumeID => String.t,
    :JobAdID => IndaHr.Model.Jobadid.t
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.ApplicationId do
  import IndaHr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:JobAdID, :struct, IndaHr.Model.Jobadid, options)
  end
end
