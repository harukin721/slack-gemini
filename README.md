# slack-gemini

Slash command for Slack that talks with Google's Gemini via AWS Lambda (written in Go).
Just type `/slack-gemini {your question}` and get an AI-powered response in seconds.

## Architecture

Slack → API Gateway → Lambda (Go) → Google Gemini

## Requirements

- AWS CLI / IAM access
- Go (>= 1.18)
- Slack workspace (admin access)
- Google Gemini API key

## Setup

### 1. Clone this repo

```bash
git clone https://github.com/your-username/slack-gemini.git
cd slack-gemini
```

### 2. Register your Gemini API Key in AWS Secrets Manager

```bash
aws secretsmanager create-secret \
  --name slack-gemini-api-key \
  --secret-string '{"GEMINI_API_KEY": "your_real_gemini_api_key_here"}'
```

### 3. WIP

WIP

## Usage

Just type in any Slack channel:

```bash
/slack-gemini Explain the difference between goroutines and threads
```

And Gemini will reply right in the channel.

## Author

Built with love by @harukin721
