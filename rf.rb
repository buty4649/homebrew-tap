class Rf < Formula
  desc 'rf is Ruby powered text/json/yaml filter'
  version '1.20.0'
  homepage 'https://github.com/buty4649/rf'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/buty4649/rf/releases/download/v1.20.0/rf-v1.20.0-darwin-arm64.zip'
      sha256 'cf078c4a589c3b81bbbf93296105ce4b89c016a0e3c1190fda6531bbc69f2cfd'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/buty4649/rf/releases/download/v1.20.0/rf-v1.20.0-linux-arm64.tar.gz'
      sha256 '6102ee811478732dbb7a92714b0eda608e6a299560d846c82d7080f509241f4e'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.20.0/rf-v1.20.0-linux-amd64.tar.gz'
      sha256 '045464e3b1225c6cea480769464e88d337ccbc0b809fb83cf9278d6805c358e1'
    end
  end

  def install
    bin.install 'rf'
  end
end
