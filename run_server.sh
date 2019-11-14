#!/bin/bash

setup() {
  mkdir server
  cp lib/Spigot-1.14.4*.jar server/
  cat > server/run_server.sh <<EOF
#!/bin/bash
java -Xmx2G -Xms2G -jar Spigot-1.14.4*.jar nogui
EOF
  chmod +x server/run_server.sh
}

# Create server if it doesn't exist.
if [[ ! -d server ]]; then
  setup
fi

# Start the server.
server/run_server.sh