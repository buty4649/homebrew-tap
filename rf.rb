class Rf < Formula
  desc 'rf is Ruby powered text/json/yaml filter'
  version '1.9.0'
  homepage 'https://github.com/buty4649/rf'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/buty4649/rf/releases/download/v1.9.0/rf-v1.9.0-darwin-arm64.zip'
      sha256 '5b0eaa915a749c767e378fde39347089dca347323a502690ab94b599ce67dd07'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.9.0/rf-v1.9.0-darwin-amd64.zip'
      sha256 '6c15abd2c9b540033b3160afeb5fc32507ba5b6dccf43e0bc01b3db96c018fa1'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/buty4649/rf/releases/download/v1.9.0/rf-v1.9.0-linux-arm64.tar.gz'
      sha256 '305779ed20361fc3fc33488881e5e2569821603d55b9df0cf98c310334f30d25'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.9.0/rf-v1.9.0-linux-amd64.tar.gz'
      sha256 'fa82623b4fc05741dccf1decb8acf358dbd351d2473d759f60c48efe7004c152'
    end
  end

  def install
    bin.install 'rf'
  end
end
