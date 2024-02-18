class Rf < Formula
  desc 'rf is Ruby powered text/json/yaml filter'
  version '1.18.0'
  homepage 'https://github.com/buty4649/rf'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/buty4649/rf/releases/download/v1.18.0/rf-v1.18.0-darwin-arm64.zip'
      sha256 'dee68de18583fd77b2df3481f7f2c3bda0614cdfa4374ec27855a0a7078e19ab'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.17.0/rf-v1.17.0-darwin-amd64.zip'
      sha256 'd9829c59e69a93587c13ae91612bd9f626b35472e92a2e28bf717acc95e8bfbc'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/buty4649/rf/releases/download/v1.18.0/rf-v1.18.0-linux-arm64.tar.gz'
      sha256 '7cb498ab58c8dc7008625df7157524fed61c99cce95f21da812ba6af00602b4e'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.18.0/rf-v1.18.0-linux-amd64.tar.gz'
      sha256 '1835de55d7bf16d3db8cce08a1ff624341cce1cac3b7f776e0c0b99f1342b244'
    end
  end

  def install
    bin.install 'rf'
  end
end
