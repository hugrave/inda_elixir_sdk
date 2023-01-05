# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Api.Universities do
  @moduledoc """
  API calls for all endpoints tagged `Universities`.
  """

  alias inda_hr.Connection
  import inda_hr.RequestBuilder


  @doc """
  Get University
  This method retrieves the *university'* full data through a UUID *university_id*.

  ## Parameters

  - connection (inda_hr.Connection): Connection to server
  - university_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :minimal (boolean()): If set to True the API returns only the Overview of the University.
  ## Returns

  {:ok, inda_hr.Model.GetUniversityResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_university_get(Tesla.Env.client, String.t, keyword()) :: {:ok, inda_hr.Model.GetUniversityResponse.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def get_university_get(connection, university_id, opts \\ []) do
    optional_params = %{
      :"minimal" => :query
    }
    %{}
    |> method(:get)
    |> url("/hr/v2/university/#{university_id}/")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %inda_hr.Model.GetUniversityResponse{}},
      { 422, %inda_hr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  University Autocomplete
  This method performs an autocomplete search based on the best matching *universities'* official name, alternative name  and acronym. It returns a minimal set of data for each *university* and its *ID*, which it is meant to be used as  *university_id* to retrieve the full data through the [Get University](https://api.inda.ai/hr/docs/v2/#operation/get_university__GET) method.  You can personalize both the autocomplete algorithm used to retrieve the list *universities* and the location search  filters. The latter allows to perform searches on both the *university'* headquarter and branches geo location. At least one of the two should match the user geo location query in order to show the *university* into the result  response.

  ## Parameters

  - connection (inda_hr.Connection): Connection to server
  - term (String.t): Token to be completed
  - opts (KeywordList): [optional] Optional parameters
    - :size (integer()): Response size.
    - :token_order (String.t): Whether to autocomplete the term in a sequential way or not. The default *any* value guarantees good performances as well as flexible results.
    - :fuzzy (boolean()): Fuzzy search. If *True* performs a fuzzy search with max edits set to 2.
    - :city ([String.t]): Generally performing better using original language queries.
    - :country ([String.t]): Generally performing better using english queries.
    - :country_code ([String.t]): Standard upper case Country Codes.
    - :lat (float()): 
    - :lon (float()): 
    - :pivot (integer()): When results are *pivot* kilometers away from *origin*, which is the geo point corresponding to the tuple *(lat, lon)*, have score 0.5.
    - :include_branches (boolean()): Whether to include *University*'s branches in the location filtering or not.
  ## Returns

  {:ok, inda_hr.Model.UniversityAutocompleteResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec university_autocomplete_get(Tesla.Env.client, String.t, keyword()) :: {:ok, inda_hr.Model.UniversityAutocompleteResponse.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def university_autocomplete_get(connection, term, opts \\ []) do
    optional_params = %{
      :"size" => :query,
      :"token_order" => :query,
      :"fuzzy" => :query,
      :"city" => :query,
      :"country" => :query,
      :"country_code" => :query,
      :"lat" => :query,
      :"lon" => :query,
      :"pivot" => :query,
      :"include_branches" => :query
    }
    %{}
    |> method(:get)
    |> url("/hr/v2/university/name/search/autocomplete/")
    |> add_param(:query, :"term", term)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %inda_hr.Model.UniversityAutocompleteResponse{}},
      { 422, %inda_hr.Model.HttpValidationError{}}
    ])
  end
end
