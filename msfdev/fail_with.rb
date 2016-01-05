
# lib/msf/core/exploit.rb
def fail_with(reason, msg=nil)
  faise RuntimeError, "#{reason.to_s}: #{msg}"
end

Msf::Module::Failure::BadConfig
Msf::Module::Failure::Disconnected
Msf::Module::Failure::NoAccess
Msf::Module::Failure::None
Msf::Module::Failure::NoTarget
Msf::Module::Failure::NotFound
Msf::Module::Failure::NotVulnerable
Msf::Module::Failure::PayloadFailed
Msf::Module::Failure::TimeoutExpired
Msf::Module::Failure::UnexpectedReply
Msf::Module::Failure::Unknown
Msf::Module::Failure::Unreachable
Msf::Module::Failure::UserInterrupt

Msf::Exploit::Failure::BadConfig
Msf::Exploit::Failure::Disconnected
Msf::Exploit::Failure::NoAccess
Msf::Exploit::Failure::None
Msf::Exploit::Failure::NoTarget
Msf::Exploit::Failure::NotFound
Msf::Exploit::Failure::NotVulnerable
Msf::Exploit::Failure::PayloadFailed
Msf::Exploit::Failure::TimeoutExpired
Msf::Exploit::Failure::UnexpectedReply
Msf::Exploit::Failure::Unknown
Msf::Exploit::Failure::Unreachable
Msf::Exploit::Failure::UserInterrupt
