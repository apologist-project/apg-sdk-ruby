# Reference
## Chat
<details><summary><code>client.chat.<a href="/lib/apologist-ai/chat/client.rb">list_chat_completions</a>() -> Apologist-ai::Chat::Types::ListChatCompletionsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of chat completions (prompts) for the agent, with applied tags expanded as { id, name } and share metadata.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.chat.list_chat_completions
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**per_page:** `Integer` — Results per page (clamped to 100).
    
</dd>
</dl>

<dl>
<dd>

**agent_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**channel_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**bible_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**cached:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**client:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**config_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**conversation_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**device_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**flagged:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**favorited:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**language:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**liked:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**min_timestamp:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**max_timestamp:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apologist-ai::Chat::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.chat.<a href="/lib/apologist-ai/chat/client.rb">create_chat_completion</a>(request) -> Apologist-ai::Types::ChatCompletionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a chat completion using the agent's configured model. Supports both streaming and non-streaming responses.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.chat.create_chat_completion(request: {
  key: "value"
})
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Apologist-ai::Types::ChatCompletionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apologist-ai::Chat::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.chat.<a href="/lib/apologist-ai/chat/client.rb">like_completion</a>(id:, request) -> Apologist-ai::Types::SuccessResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the like status of a specific chat completion
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.chat.like_completion(
  id: "id",
  liked: true
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The ID of the chat completion
    
</dd>
</dl>

<dl>
<dd>

**liked:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apologist-ai::Chat::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.chat.<a href="/lib/apologist-ai/chat/client.rb">flag_completion</a>(id:, request) -> Apologist-ai::Types::SuccessResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the flagged status of a specific chat completion
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.chat.flag_completion(
  id: "id",
  flagged: true
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The ID of the chat completion
    
</dd>
</dl>

<dl>
<dd>

**flagged:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apologist-ai::Chat::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.chat.<a href="/lib/apologist-ai/chat/client.rb">feedback_completion</a>(id:, request) -> Apologist-ai::Types::SuccessResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds user feedback to a specific chat completion
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.chat.feedback_completion(
  id: "id",
  feedback: "feedback"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The ID of the chat completion
    
</dd>
</dl>

<dl>
<dd>

**feedback:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apologist-ai::Chat::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.chat.<a href="/lib/apologist-ai/chat/client.rb">share_completion</a>(id:, request) -> Apologist-ai::Types::SuccessResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a share record for a specific chat completion
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.chat.share_completion(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The ID of the chat completion
    
</dd>
</dl>

<dl>
<dd>

**conversation_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apologist-ai::Chat::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.chat.<a href="/lib/apologist-ai/chat/client.rb">get_chat_completion</a>(id:) -> Apologist-ai::Chat::Types::GetChatCompletionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a single chat completion (prompt) by numeric id or UUID, including applied tags, guardrail/cta metadata, share metadata, and automation results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.chat.get_chat_completion(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The numeric id or UUID of the chat completion
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apologist-ai::Chat::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Corpus
<details><summary><code>client.corpus.<a href="/lib/apologist-ai/corpus/client.rb">search_corpus</a>(request) -> Apologist-ai::Corpus::Types::SearchCorpusResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Performs a semantic search across the agent's corpus of knowledge
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.corpus.search_corpus(query: "query")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**query:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**prompt_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**filters:** `Apologist-ai::Corpus::Types::CorpusSearchRequestFilters` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apologist-ai::Corpus::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.corpus.<a href="/lib/apologist-ai/corpus/client.rb">log_corpus_view</a>(model:, id:, request) -> Apologist-ai::Types::SuccessResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Records that a user viewed a specific corpus item
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.corpus.log_corpus_view(
  model: "model",
  id: "id",
  prompt_id: "prompt_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**model:** `String` — The model type (e.g., 'source')
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` — The ID of the corpus item
    
</dd>
</dl>

<dl>
<dd>

**prompt_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apologist-ai::Corpus::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.corpus.<a href="/lib/apologist-ai/corpus/client.rb">log_corpus_impression</a>(model:, id:, request) -> Apologist-ai::Types::SuccessResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Records that a corpus item was shown to a user
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.corpus.log_corpus_impression(
  model: "model",
  id: "id",
  prompt_id: "prompt_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**model:** `String` — The model type (e.g., 'source')
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` — The ID of the corpus item
    
</dd>
</dl>

<dl>
<dd>

**prompt_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apologist-ai::Corpus::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.corpus.<a href="/lib/apologist-ai/corpus/client.rb">log_corpus_referral_redirect</a>(model:, id:) -> Apologist-ai::Types::SuccessResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Records a referral for a corpus item and, when a `url` is supplied, issues a 302 redirect to it. Without a `url`, responds with a success message. Requires either the search API entitlement or a same-origin request.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.corpus.log_corpus_referral_redirect(
  model: "model",
  id: "id",
  prompt_id: "prompt_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**model:** `String` — The model type (e.g., 'source')
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` — The numeric ID of the corpus item
    
</dd>
</dl>

<dl>
<dd>

**prompt_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**url:** `String` — URL-encoded destination to redirect to after logging the referral.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apologist-ai::Corpus::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.corpus.<a href="/lib/apologist-ai/corpus/client.rb">log_corpus_referral</a>(model:, id:, request) -> Apologist-ai::Types::SuccessResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Records that a user was referred to a corpus item
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.corpus.log_corpus_referral(
  model: "model",
  id: "id",
  prompt_id: "prompt_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**model:** `String` — The model type (e.g., 'source')
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` — The ID of the corpus item
    
</dd>
</dl>

<dl>
<dd>

**prompt_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apologist-ai::Corpus::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Evaluators
<details><summary><code>client.evaluators.<a href="/lib/apologist-ai/evaluators/client.rb">list_evaluations</a>(id:) -> Apologist-ai::Evaluators::Types::ListEvaluationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of evaluations for the evaluator, scoped to the requesting agent.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.evaluators.list_evaluations(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The ID or key of the evaluator
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**per_page:** `Integer` — Results per page (clamped to 100).
    
</dd>
</dl>

<dl>
<dd>

**min_timestamp:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**max_timestamp:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**min_duration:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**max_duration:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**min_score:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**max_score:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**passed:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**benchmark:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**benchmark_run_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**benchmark_question_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apologist-ai::Evaluators::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.evaluators.<a href="/lib/apologist-ai/evaluators/client.rb">evaluate_content</a>(id:, request) -> Apologist-ai::Evaluators::Types::EvaluateContentResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Runs an evaluation on the provided content using the specified evaluator
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.evaluators.evaluate_content(
  id: "id",
  content: "content"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The ID or key of the evaluator
    
</dd>
</dl>

<dl>
<dd>

**frequency_penalty:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**confidence_threshold:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**content:** `Apologist-ai::Evaluators::Types::EvaluatorRequestContent` 
    
</dd>
</dl>

<dl>
<dd>

**model:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**presence_penalty:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**reasoning_effort:** `Apologist-ai::Evaluators::Types::EvaluatorRequestReasoningEffort` 
    
</dd>
</dl>

<dl>
<dd>

**verbosity:** `Apologist-ai::Evaluators::Types::EvaluatorRequestVerbosity` 
    
</dd>
</dl>

<dl>
<dd>

**temperature:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**top_p:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**variables:** `Internal::Types::Hash[String, String]` — Flat string key/value pairs substituted into `{key}` placeholders in the evaluator prompt. Reserved keys (`options`, `option_descriptions`, `criteria`) cannot be overridden. Not persisted; omitted from the response.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apologist-ai::Evaluators::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.evaluators.<a href="/lib/apologist-ai/evaluators/client.rb">get_evaluation</a>(id:, evaluation_id:) -> Apologist-ai::Evaluators::Types::GetEvaluationResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a single evaluation for the evaluator, scoped to the requesting agent.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.evaluators.get_evaluation(
  id: "id",
  evaluation_id: "evaluationId"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The id or key of the evaluator
    
</dd>
</dl>

<dl>
<dd>

**evaluation_id:** `String` — The id or UUID of the evaluation
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apologist-ai::Evaluators::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## CTAs
<details><summary><code>client.ct_as.<a href="/lib/apologist-ai/ct_as/client.rb">match_ctas</a>(request) -> Apologist-ai::CtAs::Types::MatchCtasResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Finds matching CTAs based on conversation context, user, session, device, or messages
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ct_as.match_ctas(request: {
  key: "value"
})
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Apologist-ai::Types::CtaMatchRequest` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apologist-ai::CtAs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ct_as.<a href="/lib/apologist-ai/ct_as/client.rb">log_cta_click</a>(id:, request) -> Apologist-ai::Types::SuccessResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Records that a user clicked on a specific CTA
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ct_as.log_cta_click(
  id: "id",
  prompt_id: "prompt_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The ID of the CTA
    
</dd>
</dl>

<dl>
<dd>

**prompt_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apologist-ai::CtAs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Users
<details><summary><code>client.users.<a href="/lib/apologist-ai/users/client.rb">list_users</a>() -> Apologist-ai::Users::Types::ListUsersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of users for the agent's team, with applied tags expanded as { id, name } and the persisted responder id.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.users.list_users
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**per_page:** `Integer` — Results per page (clamped to 100).
    
</dd>
</dl>

<dl>
<dd>

**external_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**tags:** `String` — Comma-separated tag ids.
    
</dd>
</dl>

<dl>
<dd>

**responder_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**min_timestamp:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**max_timestamp:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apologist-ai::Users::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.users.<a href="/lib/apologist-ai/users/client.rb">list_user_flags</a>() -> Apologist-ai::Users::Types::ListUserFlagsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of user flag definitions for the agent's team (all columns from user_flags), ordered by id ascending.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.users.list_user_flags
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**per_page:** `Integer` — Results per page (clamped to 100).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apologist-ai::Users::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.users.<a href="/lib/apologist-ai/users/client.rb">get_user</a>(user_id:) -> Apologist-ai::Users::Types::GetUserResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a single user by external id or internal id, with expanded tags and the persisted responder for the agent.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.users.get_user(user_id: "user_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**user_id:** `String` — The user's external id or internal id
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apologist-ai::Users::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.users.<a href="/lib/apologist-ai/users/client.rb">update_user</a>(user_id:, request) -> Apologist-ai::Users::Types::UpdateUserResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a user's external_id and/or tags and upserts the persisted responder for the agent. Only provided fields are changed.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.users.update_user(user_id: "user_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**user_id:** `String` — The user's external id or internal id
    
</dd>
</dl>

<dl>
<dd>

**external_id:** `String` — Your external identifier for the user.
    
</dd>
</dl>

<dl>
<dd>

**tags:** `Internal::Types::Array[Apologist-ai::Users::Types::UserUpdateRequestTagsItem]` — Applied tags as a mix of existing tag ids and/or default-language tag names. Unknown ids or names are rejected. Tags are mirror-owned and never created here.
    
</dd>
</dl>

<dl>
<dd>

**responder_id:** `Integer` — Responder to persist for this user on the requesting agent. Must be active on the agent.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apologist-ai::Users::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Benchmarks
<details><summary><code>client.benchmarks.<a href="/lib/apologist-ai/benchmarks/client.rb">list_benchmark_runs</a>(id:) -> Apologist-ai::Benchmarks::Types::ListBenchmarkRunsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of runs for a benchmark, scoped to the requesting agent. Each run carries nested evaluators, questions, and a flat evaluations array.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.benchmarks.list_benchmark_runs(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The id or key of the benchmark
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**per_page:** `Integer` — Results per page (clamped to 100).
    
</dd>
</dl>

<dl>
<dd>

**min_timestamp:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**max_timestamp:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**min_duration:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**max_duration:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**min_score:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**max_score:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**passed:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**min_responses:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**max_responses:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apologist-ai::Benchmarks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.benchmarks.<a href="/lib/apologist-ai/benchmarks/client.rb">run_benchmark</a>(id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Executes a benchmark run and returns the aggregated result with nested evaluators, questions, and a flat evaluations array.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.benchmarks.run_benchmark(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The id or key of the benchmark
    
</dd>
</dl>

<dl>
<dd>

**content:** `Apologist-ai::Benchmarks::Types::BenchmarkRunRequestContent` — Content to evaluate. Required when `source_id` is supplied.
    
</dd>
</dl>

<dl>
<dd>

**completion_id:** `String` — Completion UUID whose stored response should be evaluated.
    
</dd>
</dl>

<dl>
<dd>

**source_id:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**model:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**num_responses:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**use_question_variants:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**reasoning_effort:** `Apologist-ai::Benchmarks::Types::BenchmarkRunRequestReasoningEffort` 
    
</dd>
</dl>

<dl>
<dd>

**verbosity:** `Apologist-ai::Benchmarks::Types::BenchmarkRunRequestVerbosity` 
    
</dd>
</dl>

<dl>
<dd>

**score_threshold:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**value_threshold:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**temperature:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**top_p:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**frequency_penalty:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**presence_penalty:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apologist-ai::Benchmarks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.benchmarks.<a href="/lib/apologist-ai/benchmarks/client.rb">get_benchmark_run</a>(id:, run_id:) -> Apologist-ai::Benchmarks::Types::GetBenchmarkRunResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a single benchmark run by id or UUID, scoped to the requesting agent, including nested evaluators, questions, and evaluations.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.benchmarks.get_benchmark_run(
  id: "id",
  run_id: "runId"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The id or key of the benchmark
    
</dd>
</dl>

<dl>
<dd>

**run_id:** `String` — The id or UUID of the run
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apologist-ai::Benchmarks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Channels
<details><summary><code>client.channels.<a href="/lib/apologist-ai/channels/client.rb">get_discord_channel_status</a>(id:) -> Apologist-ai::Channels::Types::GetDiscordChannelStatusResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the status of the Discord channel. Used as a lightweight health/verification endpoint.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.channels.get_discord_channel_status(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The channel id
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apologist-ai::Channels::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.channels.<a href="/lib/apologist-ai/channels/client.rb">receive_discord_interaction</a>(id:, request) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Receives Discord interaction callbacks for the channel. Requests are verified via Ed25519 signature headers; unsigned or invalid requests are rejected. Payload shape is defined by Discord.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.channels.receive_discord_interaction(
  id: "id",
  signature_ed25519: "x-signature-ed25519",
  signature_timestamp: "x-signature-timestamp",
  body: {
    key: "value"
  }
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The channel id
    
</dd>
</dl>

<dl>
<dd>

**signature_ed25519:** `String` — Discord request signature (hex).
    
</dd>
</dl>

<dl>
<dd>

**signature_timestamp:** `String` — Discord request timestamp.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Internal::Types::Hash[String, Object]` — Discord interaction payload.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apologist-ai::Channels::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.channels.<a href="/lib/apologist-ai/channels/client.rb">verify_facebook_webhook</a>(id:) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Handles the Meta webhook verification handshake, echoing `hub.challenge` when `hub.verify_token` matches the channel's configured token.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.channels.verify_facebook_webhook(
  id: "id",
  hub_mode: "subscribe",
  hub_verify_token: "hub.verify_token"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The channel id
    
</dd>
</dl>

<dl>
<dd>

**hub_mode:** `Apologist-ai::Channels::Types::VerifyFacebookWebhookRequestHubMode` 
    
</dd>
</dl>

<dl>
<dd>

**hub_verify_token:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**hub_challenge:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apologist-ai::Channels::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.channels.<a href="/lib/apologist-ai/channels/client.rb">receive_facebook_message</a>(id:, request) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Receives Facebook/Messenger (and Instagram-style) message events for the channel. Payload shape is defined by Meta.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.channels.receive_facebook_message(
  id: "id",
  body: {
    key: "value"
  }
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The channel id
    
</dd>
</dl>

<dl>
<dd>

**request:** `Internal::Types::Hash[String, Object]` — Meta webhook payload.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apologist-ai::Channels::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.channels.<a href="/lib/apologist-ai/channels/client.rb">get_instagram_privacy_policy</a>(id:) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a static HTML privacy policy page for the Instagram integration.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.channels.get_instagram_privacy_policy(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The channel id
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apologist-ai::Channels::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.channels.<a href="/lib/apologist-ai/channels/client.rb">receive_telegram_update</a>(id:, request) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Receives Telegram bot update events for the channel. Non-message updates are acknowledged and ignored. Payload shape is defined by Telegram.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.channels.receive_telegram_update(
  id: "id",
  body: {
    key: "value"
  }
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The channel id
    
</dd>
</dl>

<dl>
<dd>

**request:** `Internal::Types::Hash[String, Object]` — Telegram update payload.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apologist-ai::Channels::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.channels.<a href="/lib/apologist-ai/channels/client.rb">receive_twilio_message</a>(id:, request) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Receives inbound Twilio messages for the channel as form-encoded data. Payload fields are defined by Twilio.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.channels.receive_twilio_message(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The channel id
    
</dd>
</dl>

<dl>
<dd>

**from:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**body:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apologist-ai::Channels::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shares
<details><summary><code>client.shares.<a href="/lib/apologist-ai/shares/client.rb">get_shared_messages</a>(token:) -> Apologist-ai::Shares::Types::GetSharedMessagesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Public, unauthenticated read of the messages behind a share token. The token is the bearer capability and enforces tenant isolation against the host agent. An empty or invalid token yields an empty messages array.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.shares.get_shared_messages(token: "token")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**token:** `String` — The share token
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Apologist-ai::Shares::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

