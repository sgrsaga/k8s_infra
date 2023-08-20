# Apply sysctl params without reboot
sysctl --system

sysctl net.bridge.bridge-nf-call-iptables net.bridge.bridge-nf-call-ip6tables net.ipv4.ip_forward


###########################################
# Insytall containerd
###########################################
echo "3. Set up repository"
#Set up the repository
#Update the apt package index and install packages to allow apt to use a repository over HTTPS:
apt-get update
apt-get install -y ca-certificates curl gnupg
#Add Docker’s official GPG key:
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
chmod a+r /etc/apt/keyrings/docker.gpg
#Use the following command to set up the repository:
echo "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
# Install containerd
echo "4. Install ContainerD"
apt-get install -y containerd.io


#### Container runtime configuration setup
#sudo vi /etc/containerd/config.toml
echo "5. Create /etc/containerd/config.toml"
mkdir -p /etc/containerd
echo "6. Set containerd toml config"
containerd config default > /etc/containerd/config.toml
