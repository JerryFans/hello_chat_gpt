# hello_chat_gpt
A program with a command line way to chat with ChatGPT. Use gpt-3.5-turbo Model Api.

# Usage

install

```

brew tap jerryfans/hello_chat_gpt

#intel mac
brew install hello_chat_gpt

#arm mac
arch -arm64 brew install hello_chat_gpt

```
go to "https://platform.openai.com/account/api-keys" generate your ApiKey and export your ChatGPT ApiKey to .zshrc or .bash_profile like

```

export ENV_CHAT_GPT_API_KEY="Your Api Key"

```

and then enjoy it

```
#send a message to ChatGPT will contiue the conversation
hello_chat_gpt -m Hello

#send a message to ChatGPT will refresh the conversation
hello_chat_gpt --force-m '你好世界'

```

![](https://github.com/JerryFans/hello_chat_gpt/raw/main/preview.jpg)
