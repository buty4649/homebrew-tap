class Rf < Formula
  desc 'rf is Ruby powered text/json/yaml filter'
  version '1.0.0'
  homepage 'https://github.com/buty4649/rf'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/buty4649/rf/releases/download/v1.0.0/rf-v1.0.0-darwin-arm64.zip'
      sha256 'bdb3d12c9fb830eca33ab8377d8fcfb4cfd7d35c2517d35dfe3b7df603779181'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.0.0/rf-v1.0.0-darwin-amd64.zip'
      sha256 'bf62d0819b0942b19d479226eb37c0b08a83333c5d3bd029d3896a349078f8ec'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/buty4649/rf/releases/download/v1.0.0/rf-v1.0.0-linux-arm64.tar.gz'
      sha256 'b38b04342849085cc8e65227fbcfe083c6afc076ef7da1871f78d0a843a3b418'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.0.0/rf-v1.0.0-linux-amd64.tar.gz'
      sha256 '02dc50d137b85bc238bf1a94f96500ad651b78105c358bf2d4d84303e8ee56f1'
    end
  end

  def install
    bin.install 'rf'
  end
end
