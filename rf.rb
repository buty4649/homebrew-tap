class Rf < Formula
  desc 'rf is Ruby powered text/json/yaml filter'
  version '1.8.0'
  homepage 'https://github.com/buty4649/rf'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/buty4649/rf/releases/download/v1.8.0/rf-v1.8.0-darwin-arm64.zip'
      sha256 'e9163c6a7ca0774efc3cdcfe605e667f0ce47fb04ec80314536fb825c1868b6b'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.8.0/rf-v1.8.0-darwin-amd64.zip'
      sha256 '7db614058b08b9fa72eef8a0b7326063688157a5901dbd783407f135fc2204c0'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/buty4649/rf/releases/download/v1.8.0/rf-v1.8.0-linux-arm64.tar.gz'
      sha256 '2e7fca60873a853b6c88f233be6af9c7ad586a34979c3c62171bace53715fcab'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.8.0/rf-v1.8.0-linux-amd64.tar.gz'
      sha256 '2a228dc8c1a2bb5daf952701300a5a31d3984360bd8bb990cec8d97f32e18dd3'
    end
  end

  def install
    bin.install 'rf'
  end
end
