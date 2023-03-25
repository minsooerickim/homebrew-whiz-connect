# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class WhizConnect < Formula
  desc "remove password auth when using SSH on remote servers with user defined encryption method."
  homepage "https://github.com/minsooerickim/WhizConnect"
  url "https://github.com/minsooerickim/whiz-connect/archive/refs/tags/v1.1.0.tar.gz"
  version "1.1.0"
  sha256 "016c1c5e03cf7d90f991e811c14b8e969ca80938f64f6c075dc6f0bf3b4775a0"
  license "MIT"
  
  def install
    bin.install "whiz_connect.sh" => "whiz_connect"
  end

  test do
    system "#{bin}/whiz_connect.sh", "--version" # test to check if the script works
  end
end
