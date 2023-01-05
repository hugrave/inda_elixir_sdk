# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Api.JobAdManagement do
  @moduledoc """
  API calls for all endpoints tagged `JobAdManagement`.
  """

  alias inda_hr.Connection
  import inda_hr.RequestBuilder


  @doc """
  Add JobAd
   This method adds a job advertisement to *indexname* and assigns it a *JobAdID* (namely, a Unique Universal ID or UUID4). This method requires an application/json as content type body.  On the right, we provide an example of input structure; further details are available in dedicated sections.  Note that it is mandatory for users to have previously added information about the employer through the  [Add Company](https://api.inda.ai/hr/docs/v2/#operation/add_company__POST) method; the returned *ID* is the required *EmployerID* of job advertisement data. Obviously, one may skip this step if employer company data already exists.  Furthermore, also *Skills* is a required field, since it is necessary to perform the  [Match Resume](https://api.inda.ai/hr/docs/v2/#operation/match_resumes__POST).  Users may leverage the [Extract Skills from JobAd](https://api.inda.ai/hr/docs/v2/#operation/extract_skills_from_jobad__POST) method and allow INDA to automatically extract skills by analyzing the job advertisement data. It is **highly recommended** to validate the retrieved skills before injecting them to *Add JobAd* requests.  Entities among skills, job titles and languages are automatically mapped by INDAto the adopted knowledge base, so that users can leverage on standardized values.Original values and entity IDs are available in *Details.RawValues* and *Details.Code*, respectively.  

  ## Parameters

  - connection (inda_hr.Connection): Connection to server
  - indexname (String.t): 
  - job_ad_request (JobAdRequest): 
  - opts (KeywordList): [optional] Optional parameters
    - :src_lang (String.t): Job Description language. If left empty each section's language will detected automatically.
    - :dst_lang (String.t): Extracted entities destination language. If left empty is assumed to be equal to the Job Description language.
    - :jobad_id (String.t): 
  ## Returns

  {:ok, inda_hr.Model.JobAdIdResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec add_jobad_post(Tesla.Env.client, String.t, inda_hr.Model.JobAdRequest.t, keyword()) :: {:ok, inda_hr.Model.JobAdIdResponse.t} | {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def add_jobad_post(connection, indexname, job_ad_request, opts \\ []) do
    optional_params = %{
      :"src_lang" => :query,
      :"dst_lang" => :query,
      :"jobad_id" => :query
    }
    %{}
    |> method(:post)
    |> url("/hr/v2/index/#{indexname}/jobad/")
    |> add_param(:body, :body, job_ad_request)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 201, %inda_hr.Model.JobAdIdResponse{}},
      { 400, %inda_hr.Model.ErrorModel{}},
      { 409, %inda_hr.Model.ErrorModel{}},
      { 404, %inda_hr.Model.ErrorModel{}},
      { 200, %inda_hr.Model.JobAdIdResponse{}},
      { 422, %inda_hr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Delete JobAd
   This method removes the job advertisement associated with *jobad_id* from the index *indexname*.  Note that when a job advertisement is deleted, the same happens to all its related applications.  

  ## Parameters

  - connection (inda_hr.Connection): Connection to server
  - indexname (String.t): 
  - jobad_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, inda_hr.Model.DeleteJobAdResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec delete_jobad_delete(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, inda_hr.Model.DeleteJobAdResponse.t} | {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def delete_jobad_delete(connection, indexname, jobad_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/hr/v2/index/#{indexname}/jobad/#{jobad_id}/")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %inda_hr.Model.DeleteJobAdResponse{}},
      { 404, %inda_hr.Model.ErrorModel{}},
      { 400, %inda_hr.Model.ErrorModel{}},
      { 422, %inda_hr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Get JobAd
   This method returns the information related to the job advertisement stored with id *jobad_id* in the index *indexname*.  

  ## Parameters

  - connection (inda_hr.Connection): Connection to server
  - indexname (String.t): 
  - jobad_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, inda_hr.Model.GetJobAdResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_jobad_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, inda_hr.Model.GetJobAdResponse.t} | {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def get_jobad_get(connection, indexname, jobad_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/hr/v2/index/#{indexname}/jobad/#{jobad_id}/")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %inda_hr.Model.GetJobAdResponse{}},
      { 404, %inda_hr.Model.ErrorModel{}},
      { 400, %inda_hr.Model.ErrorModel{}},
      { 422, %inda_hr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Get JobAds
   This method returns a list of UUID4 associated to the job advertisements stored in the index *indexname*.  Query parameters are used to specify the *offset* and *size* of the search. The method uses *cache* = <code style='color: #333333; opacity: 0.9'>true</code> by default, meaning that it will cache automatically each search for *cache_time* seconds. When caching is active, *offset* is ignored; in order to navigate or scroll the entire search response (in chunks of size *size*, as specified in the first search), this method should be used through the *search_id*. When *search_id* is provided, other query parameters are ignored, except *cache_time*.  The use of caching is highly recommended to improve the performances.  Note that a new *search_id* is provided for every scroll. Search IDs are not unique but it is strongly recommended to update the *search_id* at every call of this method with the *SearchID* of the last response. If the *SearchID* is missing or equal to <code style='color: #333333; opacity: 0.9'>null</code>, the scroll has ended.  Beware that the scroll can ONLY go forward in the search cache because it is meant to review large searches.  

  ## Parameters

  - connection (inda_hr.Connection): Connection to server
  - indexname (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :cache (boolean()): Optional. Whether the search results should be cached or not.
    - :cache_time (integer()): Optional. Seconds.Ignored if *cache* is <code style='color: #333333; opacity: 0.9'>false</code>.
    - :offset (integer()): Optional. Number of documents to skip. Ignored if *cache* is <code style='color: #333333; opacity: 0.9'>true</code>.
    - :search_id (String.t): Both the initial search request and each subsequent scroll request returns a *SearchID*. The *SearchID* may or may not  change between requests; however, only the most recently received *SearchID* should be used. Other query parameters are uselesswhen *SearchID* is used.
    - :size (integer()): Optional. Number of documents to return.
  ## Returns

  {:ok, inda_hr.Model.GetJobAdsResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_jobads_get(Tesla.Env.client, String.t, keyword()) :: {:ok, inda_hr.Model.GetJobAdsResponse.t} | {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def get_jobads_get(connection, indexname, opts \\ []) do
    optional_params = %{
      :"cache" => :query,
      :"cache_time" => :query,
      :"offset" => :query,
      :"search_id" => :query,
      :"size" => :query
    }
    %{}
    |> method(:get)
    |> url("/hr/v2/index/#{indexname}/jobads/")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %inda_hr.Model.GetJobAdsResponse{}},
      { 404, %inda_hr.Model.ErrorModel{}},
      { 415, %inda_hr.Model.ErrorModel{}},
      { 422, %inda_hr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Patch JobAd
   This method updates the information related to the job advertisement stored with id *job_ad_id*.  This method accepts an application/json body with the same structure as [Add JobAd](https://api.inda.ai/hr/docs/v2/#operation/add_jobad__POST), however in this case all fields are optional.  Fields that contain differences between the corresponding original ones are substituted, while new fields are added. Bear in mind that lists are considered as singular value, therefore to modify an entry in a list it is necessary to insert the full list.  Entities among skills, job titles and languages are automatically mapped by INDAto the adopted knowledge base, so that users can leverage on standardized values.Original values and entity IDs are available in *Details.RawValues* and *Details.Code*, respectively.  

  ## Parameters

  - connection (inda_hr.Connection): Connection to server
  - indexname (String.t): 
  - jobad_id (String.t): 
  - patch_job_ad_request (PatchJobAdRequest): 
  - opts (KeywordList): [optional] Optional parameters
    - :src_lang (String.t): Job Description language. If left empty each section's language will detected automatically.
  ## Returns

  {:ok, inda_hr.Model.PatchJobAdResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec patch_jobad_patch(Tesla.Env.client, String.t, String.t, inda_hr.Model.PatchJobAdRequest.t, keyword()) :: {:ok, inda_hr.Model.PatchJobAdResponse.t} | {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def patch_jobad_patch(connection, indexname, jobad_id, patch_job_ad_request, opts \\ []) do
    optional_params = %{
      :"src_lang" => :query
    }
    %{}
    |> method(:patch)
    |> url("/hr/v2/index/#{indexname}/jobad/#{jobad_id}/")
    |> add_param(:body, :body, patch_job_ad_request)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %inda_hr.Model.PatchJobAdResponse{}},
      { 404, %inda_hr.Model.ErrorModel{}},
      { 400, %inda_hr.Model.ErrorModel{}},
      { 422, %inda_hr.Model.HttpValidationError{}}
    ])
  end
end
