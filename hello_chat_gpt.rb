class HelloChatGpt < Formula
  desc "A command-line tool that generates chat responses using OpenAI's GPT model."
  homepage "https://github.com/JerryFans/hello_chat_gpt"
  url "https://github.com/JerryFans/hello_chat_gpt/raw/main/release/v1.0/hello_chat_gpt_intel_v1.0.tar.gz"
  sha256 "f8c88999e7413bc6218e346a81b8c6f19b314f2c63940579746d8d9f55d0d828"

  if Hardware::CPU.arm?
    url "https://github.com/JerryFans/hello_chat_gpt/raw/main/release/v1.0/hello_chat_gpt_m1_v1.0.tar.gz"
    sha256 "4ee3e3092ca573957307de9883ae22f186e540460c7843bce6fd5ca3088343c6"
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
