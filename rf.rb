class Rf < Formula
  desc 'rf is Ruby powered text/json/yaml filter'
  version '0.2.0'
  homepage 'https://github.com/buty4649/rf'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/buty4649/rf/releases/download/v0.2.0/rf-v0.2.0-darwin-arm64.zip'
      sha256 '939f9baeef74c635e53e35525a5c870ebe12d9d9515d049160ba4b3fcdbbf5f0'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v0.2.0/rf-v0.2.0-darwin-amd64.zip'
      sha256 'c696bf2d786990e62486df823035239bd34e16ac705c5b7df55d2b22542cfcea'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/buty4649/rf/releases/download/v0.2.0/rf-v0.2.0-linux-arm64.tar.gz'
      sha256 '88291a923faf9a5135481c85220817a289d1c8374363f88a2b3a547701b86cb1'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v0.2.0/rf-v0.2.0-linux-amd64.tar.gz'
      sha256 'ad304e88a5689631ec5891abd3191cc85c91be02dcb741177c6b787dd7c41dfe'
    end
  end

  def install
    bin.install 'rf'
  end
end
