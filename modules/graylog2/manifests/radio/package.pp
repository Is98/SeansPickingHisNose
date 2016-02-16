class graylog2::radio::package(
  $package,
  $version,
) {

  package { $package:
    ensure  => $version,
  }

}
