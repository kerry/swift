class DangerSwift < Formula
desc "Write your Dangerfiles in Swift"
	homepage "https://github.com/kerry/swift"
	version "3.7.3"
	url "https://github.com/kerry/swift/archive/3.7.3.tar.gz"
	sha256 "a4f30c30736d125b9075810f3aa1d3a4b0f5403884bca7a4e755c01443ec"
	head "https://github.com/kerry/swift.git"

	# Runs only on Xcode 10
	depends_on :xcode => ["10", :build]
	# Use the vendored danger
	depends_on "danger/tap/danger-js"

	def install
	  system "make", "install", "PREFIX=/usr/local"
	end
end
