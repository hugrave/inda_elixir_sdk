# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Api.ESCO do
  @moduledoc """
  API calls for all endpoints tagged `ESCO`.
  """

  alias IndaHr.Connection
  import IndaHr.RequestBuilder

  @doc """
  ESCO Occupations Hierarchy
   This method provides the most similar ESCO job title given a *jobtitle* (that could be a word or a sentence in several languages), its hierarchy classification according with ISCO classification, and the top three industries and job functions where the occupation is distributed.  More details about ESCO occupations hierarchy are showed [here](https://ec.europa.eu/esco/portal/occupation).

  ### Parameters

  - `connection` (IndaHr.Connection): Connection to server
  - `query` (String.t): It could be any word or sentence in several languages.
  - `opts` (keyword): Optional parameters
    - `:dst_lang` (String.t): Language of the similar ESCO occupations.

  ### Returns

  - `{:ok, IndaHr.Model.MostSimilarJobtitleResponseCategorized.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec esco_occupations_hierarchy_get(Tesla.Env.client, String.t, keyword()) :: {:ok, IndaHr.Model.MostSimilarJobtitleResponseCategorized.t} | {:ok, IndaHr.Model.ErrorModel.t} | {:ok, IndaHr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def esco_occupations_hierarchy_get(connection, query, opts \\ []) do
    optional_params = %{
      :dst_lang => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/hr/v2/occupations/similar/esco/hierarchy/")
      |> add_param(:query, :query, query)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %IndaHr.Model.MostSimilarJobtitleResponseCategorized{}},
      {500, %IndaHr.Model.ErrorModel{}},
      {503, %IndaHr.Model.ErrorModel{}},
      {422, %IndaHr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  ESCO Skills Hierarchy
   This method provides the most similar ESCO skills given a *query* (representing a skill) that could be a word or a sentence in several languages; also its hierarchy classification according with ESCO is returned.  More details about ESCO skills hierarchy are showed [here](https://ec.europa.eu/esco/portal/skill).

  ### Parameters

  - `connection` (IndaHr.Connection): Connection to server
  - `query` (String.t): A word or a brief sentence in several languages.
  - `opts` (keyword): Optional parameters
    - `:dst_lang` (String.t): Language of the similar ESCO skills.

  ### Returns

  - `{:ok, IndaHr.Model.MostSimilarSkillResponseCategorized.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec esco_skills_hierarchy_get(Tesla.Env.client, String.t, keyword()) :: {:ok, IndaHr.Model.MostSimilarSkillResponseCategorized.t} | {:ok, IndaHr.Model.ErrorModel.t} | {:ok, IndaHr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def esco_skills_hierarchy_get(connection, query, opts \\ []) do
    optional_params = %{
      :dst_lang => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/hr/v2/skills/similar/esco/hierarchy/")
      |> add_param(:query, :query, query)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %IndaHr.Model.MostSimilarSkillResponseCategorized{}},
      {500, %IndaHr.Model.ErrorModel{}},
      {503, %IndaHr.Model.ErrorModel{}},
      {422, %IndaHr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  From description to ESCO Occupations
   This method provides the list of n most affine ESCO occupations given a sentence or a long description. For each returned occupation, the service provides also a list of the main related skills according to ESCO classification.  More details about ESCO occupations are showed [here](https://ec.europa.eu/esco/portal/occupation).

  ### Parameters

  - `connection` (IndaHr.Connection): Connection to server
  - `description_input` (DescriptionInput):
  - `opts` (keyword): Optional parameters
    - `:dst_lang` (String.t): Language of the similar ESCO occupations.
    - `:size` (integer()): The maximum number of similar ESCO occupations retrieved by the algorithm.
    - `:min_score` (float()): Minimum score of the similar ESCO occupations with respect to the job title queried by the user.

  ### Returns

  - `{:ok, IndaHr.Model.EscoJobtitleResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec from_description_to_esco_occupations_post(Tesla.Env.client, IndaHr.Model.DescriptionInput.t, keyword()) :: {:ok, IndaHr.Model.EscoJobtitleResponse.t} | {:ok, IndaHr.Model.ErrorModel.t} | {:ok, IndaHr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def from_description_to_esco_occupations_post(connection, description_input, opts \\ []) do
    optional_params = %{
      :dst_lang => :query,
      :size => :query,
      :min_score => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/hr/v2/occupations/description/match/esco/")
      |> add_param(:body, :body, description_input)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %IndaHr.Model.EscoJobtitleResponse{}},
      {500, %IndaHr.Model.ErrorModel{}},
      {503, %IndaHr.Model.ErrorModel{}},
      {422, %IndaHr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  From description to ESCO Skills
   This method provides the list of n most affine ESCO skills given a sentence or a long description. For each returned skill, the service provides also a list of the main occupations where the skill is mandatory according to ESCO classification.  More details about ESCO skills are showed [here](https://ec.europa.eu/esco/portal/skill).

  ### Parameters

  - `connection` (IndaHr.Connection): Connection to server
  - `description_input` (DescriptionInput):
  - `opts` (keyword): Optional parameters
    - `:dst_lang` (String.t): Language of the similar ESCO skills.
    - `:size` (integer()): The maximum number of similar ESCO skills retrieved by the algorithm.
    - `:min_score` (float()): Minimum score of the similar ESCO skills with respect to the skill queried by the user.

  ### Returns

  - `{:ok, IndaHr.Model.EscoSkillResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec from_description_to_esco_skills_post(Tesla.Env.client, IndaHr.Model.DescriptionInput.t, keyword()) :: {:ok, IndaHr.Model.EscoSkillResponse.t} | {:ok, IndaHr.Model.ErrorModel.t} | {:ok, IndaHr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def from_description_to_esco_skills_post(connection, description_input, opts \\ []) do
    optional_params = %{
      :dst_lang => :query,
      :size => :query,
      :min_score => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/hr/v2/skills/description/match/esco/")
      |> add_param(:body, :body, description_input)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %IndaHr.Model.EscoSkillResponse{}},
      {500, %IndaHr.Model.ErrorModel{}},
      {503, %IndaHr.Model.ErrorModel{}},
      {422, %IndaHr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Mapping ESCO
   This method provides the mapping from a [ESCO](https://ec.europa.eu/esco/portal) occupation code to: - [ISCO](https://www.ilo.org/public/english/bureau/stat/isco/) occupation codes; - [O*NET](https://www.onetonline.org/) occupation codes; - [ISTAT-CP2011](http://professioni.istat.it/cp2011/) occupation codes;  All requests are displayed in English.

  ### Parameters

  - `connection` (IndaHr.Connection): Connection to server
  - `code` (String.t): [ESCO code](https://ec.europa.eu/esco/portal/occupation).
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, IndaHr.Model.ClassificationMappingEscoResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec mapping_esco_get(Tesla.Env.client, String.t, keyword()) :: {:ok, IndaHr.Model.ClassificationMappingEscoResponse.t} | {:ok, IndaHr.Model.ErrorModel.t} | {:ok, IndaHr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def mapping_esco_get(connection, code, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/hr/v2/occupations/mapping/esco/")
      |> add_param(:query, :code, code)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %IndaHr.Model.ClassificationMappingEscoResponse{}},
      {404, %IndaHr.Model.ErrorModel{}},
      {400, %IndaHr.Model.ErrorModel{}},
      {503, %IndaHr.Model.ErrorModel{}},
      {422, %IndaHr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Mapping ISCO
   This method provides the mapping from a [ISCO](https://www.ilo.org/public/english/bureau/stat/isco/) occupation code to: - [ESCO](https://ec.europa.eu/esco/portal) occupation codes; - [O*NET](https://www.onetonline.org/) occupation codes; - [ISTAT-CP2011](http://professioni.istat.it/cp2011/) occupation codes;  All requests are displayed in English.

  ### Parameters

  - `connection` (IndaHr.Connection): Connection to server
  - `code` (String.t): [ISCO code](https://www.ilo.org/public/english/bureau/stat/isco/).
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, IndaHr.Model.ClassificationMappingIscoResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec mapping_isco_get(Tesla.Env.client, String.t, keyword()) :: {:ok, IndaHr.Model.ErrorModel.t} | {:ok, IndaHr.Model.ClassificationMappingIscoResponse.t} | {:ok, IndaHr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def mapping_isco_get(connection, code, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/hr/v2/occupations/mapping/isco/")
      |> add_param(:query, :code, code)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %IndaHr.Model.ClassificationMappingIscoResponse{}},
      {404, %IndaHr.Model.ErrorModel{}},
      {400, %IndaHr.Model.ErrorModel{}},
      {503, %IndaHr.Model.ErrorModel{}},
      {422, %IndaHr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Mapping ISTAT-CP2011
   This method provides the mapping from a [ISTAT-CP2011](http://professioni.istat.it/cp2011/) occupation code to: - [ESCO](https://ec.europa.eu/esco/portal) occupation codes; - [O*NET](https://www.onetonline.org/) occupation codes; - [ISCO](https://www.ilo.org/public/english/bureau/stat/isco/) occupation codes;  All requests are displayed in English.

  ### Parameters

  - `connection` (IndaHr.Connection): Connection to server
  - `code` (String.t): [ISTAT code](http://professioni.istat.it/cp2011/).
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, IndaHr.Model.ClassificationMappingIstatResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec mapping_istat_cp2011_get(Tesla.Env.client, String.t, keyword()) :: {:ok, IndaHr.Model.ClassificationMappingIstatResponse.t} | {:ok, IndaHr.Model.ErrorModel.t} | {:ok, IndaHr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def mapping_istat_cp2011_get(connection, code, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/hr/v2/occupations/mapping/istat/")
      |> add_param(:query, :code, code)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %IndaHr.Model.ClassificationMappingIstatResponse{}},
      {404, %IndaHr.Model.ErrorModel{}},
      {400, %IndaHr.Model.ErrorModel{}},
      {503, %IndaHr.Model.ErrorModel{}},
      {422, %IndaHr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Mapping O*NET
   This method provides the mapping from a [O*NET](https://www.onetonline.org/) occupation code to: - [ESCO](https://ec.europa.eu/esco/portal) occupation codes; - [ISTAT-CP2011](http://professioni.istat.it/cp2011/) occupation codes; - [ISCO](https://www.ilo.org/public/english/bureau/stat/isco/) occupation codes;  All requests are displayed in English.

  ### Parameters

  - `connection` (IndaHr.Connection): Connection to server
  - `code` (String.t): [O*NET code](https://www.onetonline.org/).
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, IndaHr.Model.ClassificationMappingOnetResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec mapping_onet_get(Tesla.Env.client, String.t, keyword()) :: {:ok, IndaHr.Model.ClassificationMappingOnetResponse.t} | {:ok, IndaHr.Model.ErrorModel.t} | {:ok, IndaHr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def mapping_onet_get(connection, code, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/hr/v2/occupations/mapping/onet/")
      |> add_param(:query, :code, code)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %IndaHr.Model.ClassificationMappingOnetResponse{}},
      {404, %IndaHr.Model.ErrorModel{}},
      {400, %IndaHr.Model.ErrorModel{}},
      {503, %IndaHr.Model.ErrorModel{}},
      {422, %IndaHr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Similar ESCO Occupations
   This method provides the list of n most similar ESCO occupations given a *jobtitle*. For each returned occupation, the service provides also a list of the main related skills according to ESCO classification.  More details about ESCO occupations are showed [here](https://ec.europa.eu/esco/portal/occupation).

  ### Parameters

  - `connection` (IndaHr.Connection): Connection to server
  - `query` (String.t): A word or a brief sentence in several languages.
  - `opts` (keyword): Optional parameters
    - `:dst_lang` (String.t): Language of the similar ESCO occupations.
    - `:size` (integer()): The maximum number of similar ESCO occupations retrieved by the algorithm.
    - `:min_score` (float()): Minimum score of the similar ESCO occupations with respect to the job title queried by the user.

  ### Returns

  - `{:ok, IndaHr.Model.EscoJobtitleResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec similar_esco_occupations_get(Tesla.Env.client, String.t, keyword()) :: {:ok, IndaHr.Model.EscoJobtitleResponse.t} | {:ok, IndaHr.Model.ErrorModel.t} | {:ok, IndaHr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def similar_esco_occupations_get(connection, query, opts \\ []) do
    optional_params = %{
      :dst_lang => :query,
      :size => :query,
      :min_score => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/hr/v2/occupations/similar/esco/")
      |> add_param(:query, :query, query)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %IndaHr.Model.EscoJobtitleResponse{}},
      {500, %IndaHr.Model.ErrorModel{}},
      {503, %IndaHr.Model.ErrorModel{}},
      {422, %IndaHr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Similar ESCO Skills
   This method provides the list of n most similar ESCO skills given a *skill*. For each returned skill, the service provides also a list of the main occupations where the skill is mandatory according to ESCO classification.  More details about ESCO skills are showed [here](https://ec.europa.eu/esco/portal/skill).

  ### Parameters

  - `connection` (IndaHr.Connection): Connection to server
  - `query` (String.t): A word or a brief sentence in several languages.
  - `opts` (keyword): Optional parameters
    - `:dst_lang` (String.t): Language of the similar ESCO skills.
    - `:size` (integer()): The maximum number of similar ESCO skills retrieved by the algorithm.
    - `:min_score` (float()): Minimum score of the similar ESCO skills with respect to the skill queried by the user.

  ### Returns

  - `{:ok, IndaHr.Model.EscoSkillResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec similar_esco_skills_get(Tesla.Env.client, String.t, keyword()) :: {:ok, IndaHr.Model.EscoSkillResponse.t} | {:ok, IndaHr.Model.ErrorModel.t} | {:ok, IndaHr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def similar_esco_skills_get(connection, query, opts \\ []) do
    optional_params = %{
      :dst_lang => :query,
      :size => :query,
      :min_score => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/hr/v2/skills/similar/esco/")
      |> add_param(:query, :query, query)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %IndaHr.Model.EscoSkillResponse{}},
      {500, %IndaHr.Model.ErrorModel{}},
      {503, %IndaHr.Model.ErrorModel{}},
      {422, %IndaHr.Model.HttpValidationError{}}
    ])
  end
end
