class HelloChatGpt < Formula
  desc "A command-line tool that generates chat responses using OpenAI's GPT model."
  homepage "https://github.com/JerryFans/hello_chat_gpt"
  url "https://github.com/JerryFans/hello_chat_gpt/raw/main/release/v1.0/hello_chat_gpt_intel"
  sha256 "ace62092ac76b7c25caca467ff71e1300b68ba023f8c55f45956eb6dc20a06fc"

  if Hardware::CPU.arm?
    url "https://github.com/JerryFans/hello_chat_gpt/raw/main/release/v1.0/hello_chat_gpt_m1"
    sha256 "5befc858818e46afda39edcee30d70c96d339bbf2ef73d83fb16b0e91747bb6d"
  end

  def install
    if Hardware::CPU.arm?
      bin.install "hello_chat_gpt_m1" => "hello_chat_gpt"
    else
      bin.install "hello_chat_gpt_intel" => "hello_chat_gpt"
    end
  end

  test do
    system "#{bin}/hello_chat_gpt", "--help"
  end
end
