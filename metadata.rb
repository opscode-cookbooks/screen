name              "screen"
maintainer        "Chef Software, Inc."
maintainer_email  "cookbooks@chef.io"
license           "Apache 2.0"
description       "Installs screen"
version           "0.8.0"

recipe "screen",         "Installs screen"
recipe "screen::source", "Builds and installs screen from the Savannah git repository"

%w{ redhat centos fedora ubuntu debian }.each do |os|
  supports os
end

depends "git"
depends "build-essential"
