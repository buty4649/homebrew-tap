class Rf < Formula
  desc 'rf is Ruby powered text/json/yaml filter'
  version '1.17.0'
  homepage 'https://github.com/buty4649/rf'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/buty4649/rf/releases/download/v1.17.0/rf-v1.17.0-darwin-arm64.zip'
      sha256 '9055774e2759fd0af52afa8c938e559b6d1840c8c637aee79bf6991c5bd5e637'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.17.0/rf-v1.17.0-darwin-amd64.zip'
      sha256 'd9829c59e69a93587c13ae91612bd9f626b35472e92a2e28bf717acc95e8bfbc'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/buty4649/rf/releases/download/v1.17.0/rf-v1.17.0-linux-arm64.tar.gz'
      sha256 '1082e53fa960e7d85d0e9e2ba0b09fc05ac3fe98ba00fc0df25cec3fb98bc542'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.17.0/rf-v1.17.0-linux-amd64.tar.gz'
      sha256 'ca79ef4bb22999fd4af617f24e79133e65726c44dd4498912e141cd9495026b9'
    end
  end

  def install
    bin.install 'rf'
  end
end
