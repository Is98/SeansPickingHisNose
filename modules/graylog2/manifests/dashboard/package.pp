class graylog2::dashboard::package(
  $package,
  $version,
) {

  package { $package:
    ensure  => $version,
  }

}
