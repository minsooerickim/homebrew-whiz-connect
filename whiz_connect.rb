# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class WhizConnect < Formula
  desc "remove password auth when using SSH on remote servers with user defined encryption method."
  homepage "https://github.com/minsooerickim/WhizConnect"
  url "https://github.com/minsooerickim/whiz-connect/archive/refs/tags/v1.1.0.tar.gz"
  version "1.1.0"
  sha256 "19340ae10e14fde0eac676b729886d22edecf4f07fa509760923f71865fe6524"
  license "MIT"
  
  def install
    bin.install "whiz_connect.sh" => "whiz_connect"
  end

  test do
    system "#{bin}/whiz_connect.sh", "--version" # test to check if the script works
  end
end
