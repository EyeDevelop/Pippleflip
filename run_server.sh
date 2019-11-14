#!/bin/bash

setup() {
  mkdir server || true
  cp lib/Spigot-1.14.4-94af569-20190911-0820.jar server/
  cat > server/run_server.sh <<EOF
#!/bin/bash
java -Xmx2G -Xms2G -jar Spigot-1.14.4-94af569-20190911-0820.jar nogui
EOF
  echo "eula=true" > server/eula.txt
  chmod +x server/run_server.sh
}

# Create server if it doesn't exist.
if [[ ! -f "server/run_server.sh" ]]; then
  setup
fi

# Start the server.
cd server/
bash run_server.sh