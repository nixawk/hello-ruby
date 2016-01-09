# https://github.com/rapid7/metasploit-framework/wiki/How-to-clean-up-files-using-FileDropper
# https://github.com/rapid7/metasploit-framework/blob/master/lib/msf/core/exploit/file_dropper.rb

include Msf::Exploit::FileDropper

register_file_for_cleanup("C:\\Windows\\System32\\payload.exe")
register_file_for_cleanup("payload.exe")
register_file_for_cleanup("file_1.vbs", "file_2.exe", "file_1.conf")

alias register_file_for_cleanup register_files_for_cleanup
