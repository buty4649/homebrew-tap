class Rf < Formula
  desc 'rf is Ruby powered text/json/yaml filter'
  version '1.1.0'
  homepage 'https://github.com/buty4649/rf'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/buty4649/rf/releases/download/v1.1.0/rf-v1.1.0-darwin-arm64.zip'
      sha256 '84a8b52eacd1e306b4e718f161f4beecd3ea1c07765b1915b02e8a6c8ec605d7'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.1.0/rf-v1.1.0-darwin-amd64.zip'
      sha256 '5cf4f48eb3a99d3e7da4b823f2e9a12f05545e35be828f1f8b48689eef9c0cf1'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/buty4649/rf/releases/download/v1.1.0/rf-v1.1.0-linux-arm64.tar.gz'
      sha256 '454e13031b848c2063b4d2b7c0cd3d0183f55bfb3054a5d118db51fcef0c1e25'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.1.0/rf-v1.1.0-linux-amd64.tar.gz'
      sha256 '477a7659a0a0f708e9422e5ed8a6820b219414bdcec10916908b367f990f8a96'
    end
  end

  def install
    bin.install 'rf'
  end
end
