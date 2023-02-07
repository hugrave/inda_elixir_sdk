# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.ImportItemRequest do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Bucket,
    :Files,
    :Credentials
  ]

  @type t :: %__MODULE__{
    :Bucket => String.t,
    :Files => [IndaHr.Model.BucketItem.t],
    :Credentials => IndaHr.Model.AwsCredentials.t | nil
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.ImportItemRequest do
  import IndaHr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Files, :list, IndaHr.Model.BucketItem, options)
    |> deserialize(:Credentials, :struct, IndaHr.Model.AwsCredentials, options)
  end
end
