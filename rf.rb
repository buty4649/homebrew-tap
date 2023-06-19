class Rf < Formula
  desc 'rf is Ruby powered text/json/yaml filter'
  version '1.4.0'
  homepage 'https://github.com/buty4649/rf'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/buty4649/rf/releases/download/v1.4.0/rf-v1.4.0-darwin-arm64.zip'
      sha256 'f73e9df5364f25ae033b5fc11c51a3ab65edd77dd6bfee3c400131c9dc1d8985'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.4.0/rf-v1.4.0-darwin-amd64.zip'
      sha256 '1e8e2cf2d82641a4723100580be83c826f1a054ba1af9dd0867b4da6496c76fc'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/buty4649/rf/releases/download/v1.4.0/rf-v1.4.0-linux-arm64.tar.gz'
      sha256 '89c0899005be540e68035ec83cacb767aa91eece80e91f15e9a607cb70fad94f'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.4.0/rf-v1.4.0-linux-amd64.tar.gz'
      sha256 '6f3e35917e487f09c176db07ea338afd5211dd5ce9e3dc6f02f49b5ea631291c'
    end
  end

  def install
    bin.install 'rf'
  end
end
