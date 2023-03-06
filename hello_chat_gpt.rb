class HelloChatGpt < Formula
  include Language::Python::Virtualenv

  desc "A chatbot powered by GPT"
  homepage "https://github.com/example/hello_chat_gpt"
  url "https://github.com/example/hello_chat_gpt/archive/v1.0.0.tar.gz"
  sha256 "1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef"

  depends_on "python@3.9"

  resource "requests" do
    url 
"https://files.pythonhosted.org/packages/bc/88/1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef/requests-2.26.0-py2.py3-none-any.whl"
    sha256 "class HelloChatGpt < Formula
  include Language::Python::Virtualenv

  desc "A chatbot powered by GPT"
  homepage "https://github.com/example/hello_chat_gpt"
  url "https://github.com/example/hello_chat_gpt/archive/v1.0.0.tar.gz"
  sha256 "1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef"

  depends_on "python@3.9"

  resource "requests" do
    url "https://files.pythonhosted.org/packages/d2/f4/274d1dbe96b41cf4e0efb70cbced278ffd61b5c7bb70338b62af94ccb25b/requests-2.28.2-py3-none-any.whl"
    sha256 "64299f4909223da747622c030b781c0d7811e359c37124b4bd368fb8c6518baa"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"hello_chat_gpt", "--version"
  end
end
"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"hello_chat_gpt", "--version"
  end
end
