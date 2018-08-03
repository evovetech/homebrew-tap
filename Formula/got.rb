class Got < Formula
  desc ""
  homepage ""
  url "https://github.com/evovetech/got/releases/download/v0.3.1/got_0.3.1_darwin_amd64.tar.gz"
  version "0.3.1"
  sha256 "b419a0fd3d46bc9e5e885ccd3c53b8b559e2dd2e4e192f1c63e89e1735a6ce6e"

  def install
    bin.install "got"
  end
end
