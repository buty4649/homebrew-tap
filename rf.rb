class Rf < Formula
  desc 'rf is Ruby powered text/json/yaml filter'
  version '1.14.0'
  homepage 'https://github.com/buty4649/rf'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/buty4649/rf/releases/download/v1.14.0/rf-v1.14.0-darwin-arm64.zip'
      sha256 'a2d30e2a0ffe608c326cd7846f8f6da59095bb9b9332ba9d6e611310d53fed2e'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.14.0/rf-v1.14.0-darwin-amd64.zip'
      sha256 '549c42efe55c231be7f2cbfff8d9f2ab4c503be1e218517b0b197367e0328a7c'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/buty4649/rf/releases/download/v1.14.0/rf-v1.14.0-linux-arm64.tar.gz'
      sha256 '94c77a6328c90c89071e2ddf094c1fb05964f3754420f401f71718c1187dea64'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.14.0/rf-v1.14.0-linux-amd64.tar.gz'
      sha256 '60e6259b3e3b4c2df0a92b9a3a5b811cc763eb69b4154ecd176b4a5c18b4af28'
    end
  end

  def install
    bin.install 'rf'
  end
end
