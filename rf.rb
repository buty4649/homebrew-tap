class Rf < Formula
  desc 'rf is Ruby powered text/json/yaml filter'
  version '1.12.0'
  homepage 'https://github.com/buty4649/rf'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/buty4649/rf/releases/download/v1.12.0/rf-v1.12.0-darwin-arm64.zip'
      sha256 'a6f002546db0770456da69d7c75f5ed462d92ded59452f15e9febe0af5023091'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.12.0/rf-v1.12.0-darwin-amd64.zip'
      sha256 '495d8400db9f45481e1edaf37690b6573e5c0031e1ac6556eea9c2f79a007ccf'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/buty4649/rf/releases/download/v1.12.0/rf-v1.12.0-linux-arm64.tar.gz'
      sha256 'e40a0a6507a3bee2a9a0ad98147cd73b2258c973100bdade8d7ca6c7c97313d5'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.12.0/rf-v1.12.0-linux-amd64.tar.gz'
      sha256 '68aefa5c2aec3a91f2e876f4972e03766183fae5afe0183fc5ddde078a0d31c0'
    end
  end

  def install
    bin.install 'rf'
  end
end
