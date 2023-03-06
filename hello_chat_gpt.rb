class HelloChatGpt < Formula
  include Language::Python::Virtualenv

  desc "A program with a command line way to chat with ChatGPT"
  homepage "https://github.com/jerryfans/hello_chat_gpt"
  url "https://github.com/JerryFans/hello_chat_gpt/raw/main/dist/1.0.0/hello_chat_gpt-1.0.0.tar.gz"
  sha256 "99aac8eaeb363485df39d4a6796307d98f260ce5a2b42fd2769bff04e3632843"

  def install
    bin.install "hello_chat_gpt"
  end

  test do
    assert_match "Hello, world!", shell_output("#{bin}/hello_chat_gpt")
  end
end

