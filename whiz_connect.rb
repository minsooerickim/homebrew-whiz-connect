# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class WhizConnect < Formula
  desc "remove password auth when using SSH on remote servers with user defined encryption method."
  homepage "https://github.com/minsooerickim/WhizConnect"
  url "https://github.com/minsooerickim/whiz-connect/archive/refs/tags/v2.0.0.tar.gz"
  version "2.0.0"
  # curl -L https://github.com/minsooerickim/whiz-connect/archive/refs/tags/v2.0.0.tar.gz | tee whiz_connect.tar.gz | shasum -a 256
  sha256 "8b394353d3160a8f2f1c94b392cf1bcf346c6e32df2f20e7fa653161ee61bb24"
  license "MIT"
  
  def install
    bin.install "whiz_connect.sh" => "whiz_connect"
  end

  test do
    system "#{bin}/whiz_connect.sh", "--version" # test to check if the script works
  end
end
