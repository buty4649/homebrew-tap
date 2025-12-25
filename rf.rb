class Rf < Formula
  desc 'rf is Ruby powered text/json/yaml filter'
  version '1.33.0'
  homepage 'https://github.com/buty4649/rf'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/buty4649/rf/releases/download/v1.33.0/rf-v1.33.0-darwin-arm64.zip'
      sha256 'b6880cb7c9c06bb6d7843f61a911aa870d5cb6d6d38e02e1fa052529ba8c449b'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/buty4649/rf/releases/download/v1.33.0/rf-v1.33.0-linux-arm64.tar.gz'
      sha256 '21645742b961b9113d2b63659aa7cac9801e575a584789886aa95807d45eac62'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.33.0/rf-v1.33.0-linux-amd64.tar.gz'
      sha256 '717ad871a1c66e4a281a17e9967db61582cf4cbed70a730996837ee383b25e68'
    end
  end

  def install
    bin.install 'rf'
  end
end
