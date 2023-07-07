# Launch nodes
multipass launch 22.04 --name node01 --cloud-init cloud-init.yaml
multipass launch 22.04 --name node02 --cloud-init cloud-init.yaml
multipass launch 22.04 --name node03 --cloud-init cloud-init.yaml

# Generate ansible inventory
multipass list|grep node|awk '{print $1,"ansible_host="$3}' > hosts
