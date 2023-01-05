# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Api.JobAdSearch do
  @moduledoc """
  API calls for all endpoints tagged `JobAdSearch`.
  """

  alias inda_hr.Connection
  import inda_hr.RequestBuilder


  @doc """
  Full-Text Search on JobAds
  This is the most common way to search a text document through the job advertisements stored in the index *indexname*.  This function takes as input a list of objects containing the terms you wish to search for, please consider that tokens (individual words) grouped together in the same *QueryTerms* element will be queried separately in an **OR** clause, whereas different *QueryTerms* elements will be joined by an **AND** clause. To put it in words, the query will retrieve documents that match at least one word from each element in *QueryTerms*.  This behaviour can be modified in one of two ways:  + The **default_operator** query parameter, which defaults to OR, can be set to AND in order to only find documents that contain ALL of the tokens in a given *query_terms* element. + The **\"** (double quotes) operator, which can be used to wrap strings made up of multiple tokens in order to find documents that contain those words exactly in the order they are presented (sentence match). Remember to escape double quotes in your JSON inputs with a backslash.  Each *QueryTerms* element can be negated with the parameter **Exclude** set to *true*. This is equivalent to setting it in a **NOT** clause.  It's also possible to use wildcards to perform jolly searches, the supported wildcards are:  + \\*: Can be used to match any number of characters in the middle (ad\\*ment) or at the end (doc\\*) of a word. + ?: Can be used to match a single character in any position (?xample).  All queries are case-insensitive and have some amount of fuzziness by default, meaning that typos and character transpositions will be included in the matches. Additionally, filters can be added to form boolean queries on indexed fields. For a comprehensive list and explanation of filters, see the [*Query Filters*](https://api.inda.ai/hr/docs/v2/#tag/Query-Filters) section, the structure is the same.  Query parameters are used to specify the *offset* and *size* of the search. The method uses *cache* = <code style='color: #333333; opacity: 0.9'>true</code> by default, meaning that it will cache automatically each search for *cache_time* seconds. When caching is active, *offset* is ignored; in order to navigate or scroll the entire search response (in chunks of size *size*, as specified in the first search), this method should be used through the *search_id*. When *search_id* is provided, other query parameters are ignored, except *cache_time*.  The use of caching is highly recommended to improve the performances.  Note that a new *search_id* is provided for every scroll. Search IDs are not unique but it is strongly recommended to update the *search_id* at every call of this method with the *SearchID* of the last response. If the *SearchID* is missing or equal to <code style='color: #333333; opacity: 0.9'>null</code>, the scroll has ended.  Beware that the scroll can ONLY go forward in the search cache because it is meant to review large searches.

  ## Parameters

  - connection (inda_hr.Connection): Connection to server
  - indexname (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :default_operator (String.t): Optional. Change this to *AND* if you wish documents to match ALLof the tokens in a single query_terms element.
    - :cache (boolean()): Optional. Whether the search results should be cached or not.
    - :cache_time (integer()): Optional. Seconds. Ignored if *cache* is <code style='color: #333333; opacity: 0.9'>false</code>.
    - :size (integer()): Optional. Number of documents to return.
    - :offset (integer()): Optional. Number of documents to skip. Ignored if *cache* is <code style='color: #333333; opacity: 0.9'>true</code>.
    - :min_score (float()): Optional. Minimum pertinence score.
    - :search_id (String.t): Both the initial search request and each subsequent scroll request returns a *SearchID*. The *SearchID* may or may not  change between requests; however, only the most recently received *SearchID* should be used.
    - :body (JobAdFullTextSearch): 
  ## Returns

  {:ok, inda_hr.Model.FoundJobAdsResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec full_text_search_on_jobads_post(Tesla.Env.client, String.t, keyword()) :: {:ok, inda_hr.Model.FoundJobAdsResponse.t} | {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def full_text_search_on_jobads_post(connection, indexname, opts \\ []) do
    optional_params = %{
      :"default_operator" => :query,
      :"cache" => :query,
      :"cache_time" => :query,
      :"size" => :query,
      :"offset" => :query,
      :"min_score" => :query,
      :"search_id" => :query,
      :body => :body
    }
    %{}
    |> method(:post)
    |> url("/hr/v2/index/#{indexname}/jobads/search/full-text/")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %inda_hr.Model.FoundJobAdsResponse{}},
      { 415, %inda_hr.Model.ErrorModel{}},
      { 400, %inda_hr.Model.ErrorModel{}},
      { 422, %inda_hr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Search Applications
  This method is meant to return those job advertisements that the resume of ID *resume_id* have applied to, if they respect the given query.  Users may specify [query filters](https://api.inda.ai/hr/docs/v2/#tag/Query-Filters) to apply on both [Applications](https://api.inda.ai/hr/docs/v2/#tag/Application-Management) and [JobAds](https://api.inda.ai/hr/docs/v2/#tag/JobAd-Management) indexed fields.  Query parameters are used to specify the *cache_time* and *size* of the search. The method will automatically cache each search for *cache_time* seconds. In order to navigate or scroll the entire search response (in chunks of size *size*, as specified in the first search), this method should be used through the *search_id*. When *search_id* is provided, other query parameters are ignored, except *cache_time*.  Note that a new *search_id* is provided for every scroll. Search IDs are not unique but it is strongly recommended to update the *search_id* at every call of this method with the *SearchID* of the last response. If the *SearchID* is missing or equal to <code style='color: #333333; opacity: 0.9'>null</code>, the scroll has ended.  Beware that the scroll can ONLY go forward in the search cache because it is meant to review large searches.

  ## Parameters

  - connection (inda_hr.Connection): Connection to server
  - indexname (String.t): 
  - resume_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :cache_time (integer()): Optional. Seconds.
    - :size (integer()): Optional. Number of documents to return.
    - :search_id (String.t): Both the initial search request and each subsequent scroll request returns a *SearchID*. The *SearchID* may or may not  change between requests; however, only the most recently received *SearchID* should be used.
    - :body (JobAdSearchQuery): 
  ## Returns

  {:ok, inda_hr.Model.FoundJobAdsResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec search_applications_post(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, inda_hr.Model.FoundJobAdsResponse.t} | {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def search_applications_post(connection, indexname, resume_id, opts \\ []) do
    optional_params = %{
      :"cache_time" => :query,
      :"size" => :query,
      :"search_id" => :query,
      :body => :body
    }
    %{}
    |> method(:post)
    |> url("/hr/v2/index/#{indexname}/resume/#{resume_id}/applications/jobads/search/")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %inda_hr.Model.FoundJobAdsResponse{}},
      { 404, %inda_hr.Model.ErrorModel{}},
      { 415, %inda_hr.Model.ErrorModel{}},
      { 400, %inda_hr.Model.ErrorModel{}},
      { 422, %inda_hr.Model.HttpValidationError{}}
    ])
  end
end
