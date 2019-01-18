pkg_name=expeditor-acceptance-empty
pkg_origin=chef-es
pkg_version=0.1.0
pkg_maintainer="Engineering Services <releng@chef.io>"
pkg_license=('Proprietary')
pkg_upstream_url=https://github.com/chef/expeditor
pkg_description="An empty package used to test Expeditor"
pkg_bin_dirs=(bin)
pkg_deps=()

do_build() {
  return 0
}

do_install() {
  return 0
}
