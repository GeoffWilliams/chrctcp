# Chrctcp
#
# Manage services in /etc/rc.tcpip with chrctcp
#
# @param service Name of service to manage, defaults to $title
# @param ensure 'disabled' to disable a service or 'enabled' to enable it
# @param refresh_service True to pass the -S flag to chrctcp else do nothing
define chrctcp(
    String $service = $title,
    Enum['disabled', 'enabled'] $ensure = 'disabled',
    Boolean $refresh_service = false,
) {
  $file = "/etc/rc.tcpip"
  if $refresh_service {
    $_refresh_service = "-S"
  } else {
    $_refresh_service = ""
  }

  if $ensure == "disabled" {
    $_ensure  = "-d"
    $op_match = "start"
  } else {
    $_ensure  = "-a"
    $op_match = "#start"
  }

  exec { "chrctcp ${service}":
    command => "chrctcp ${_refresh_service} ${_ensure} ${service}",
    onlyif  => "grep '^${op_match}.*${service}' < ${file}",
    path    => ["/usr/bin", "/usr/sbin"]
  }
}
