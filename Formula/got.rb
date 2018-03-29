require 'rbconfig'
class Got < Formula
  desc ""
  homepage "https://github.com/evovetech/got"
  version "0.3"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/evovetech/got/releases/download/v0.3/got_0.3_darwin_amd64.zip"
      sha256 "0e5f398a1f989ca190191639f69db612a65ace7c6f516768e55cf32118ffa67f"
    when /linux/
      url "https://github.com/evovetech/got/releases/download/v0.3/got_0.3_linux_amd64.tar.gz"
      sha256 "46ffb4cdd547c316292e6d82278c49a3289f5f82bfda26eb45cd2260721ad2e7"
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  else
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/evovetech/got/releases/download/v0.3/got_0.3_darwin_386.zip"
      sha256 "d77940e55bb5bd6e85b74ac774bbab8d21afc55392cbfdfb6dacf7b44613ac34"
    when /linux/
      url "https://github.com/evovetech/got/releases/download/v0.3/got_0.3_linux_386.tar.gz"
      sha256 "f00d5f7a246689fc8b258eefa697e68034769a1400d12f2a6e2361d8f9c78257"
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  end

  def install
    bin.install "got"
  end

  test do
    system "got"
  end

end
