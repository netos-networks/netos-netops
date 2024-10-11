#!/bin/bash

# Variables
VENV_DIR="ansible_venv"
PYTHON_VERSION="python3"
ANSIBLE_VERSION="latest"
SEMAPHORE_VERSION=
LOCAL_IP=$(hostname -I | awk '{print $1}')

# Define color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
NC='\033[0m' # No Color

# Function to print messages in different colors
print_info() {
    echo -e "${BLUE}[INFO] $1${NC}"
}

print_success() {
    echo -e "${GREEN}[SUCCESS] $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}[WARNING] $1${NC}"
}

print_error() {
    echo -e "${RED}[ERROR] $1${NC}"
}

# Check if the script is being run as root (UID 0)
if [ "$(id -u)" -ne 0 ]; then
  echo
  print_error "This script must be run as root so we can install required applications."
  echo -e "${YELLOW}Please re-run using the command: sudo \"./deploy.sh\"${NC}"
  echo
  exit 1
fi

# Check if the current directory is /netos
current_dir=$(pwd)
if [ "$current_dir" != "/netos/netos-netops" ]; then
  echo
  print_error "This script must be run from the /netos directory."
  print_warning "This is a dependency for all repos and variables."
  echo
  print_info "Please do the following:"
  echo -e "1. ${YELLOW}type \"mkdir /netos\"${NC}"
  echo -e "2. ${YELLOW}type \"cd /netos\"${NC}"
  echo -e "3. ${YELLOW}type \"sudo git clone https://github.com/netos-networks/netos-netops\"${NC}"
  echo -e "4. ${YELLOW}run  \"deploy.sh\" from within /netos/netos-netops${NC}"
  echo
  exit 1
fi

# Banner
echo
echo -e "${BLUE}███╗░░██╗███████╗████████╗░█████╗░░██████╗${NC}"
echo -e "${BLUE}████╗░██║██╔════╝╚══██╔══╝██╔══██╗██╔════╝${NC}"
echo -e "${BLUE}██╔██╗██║█████╗░░░░░██║░░░██║░░██║╚█████╗░${NC}"
echo -e "${BLUE}██║╚████║██╔══╝░░░░░██║░░░██║░░██║░╚═══██╗${NC}"
echo -e "${BLUE}██║░╚███║███████╗░░░██║░░░╚█████╔╝██████╔╝${NC}"
echo -e "${BLUE}╚═╝░░╚══╝╚══════╝░░░╚═╝░░░░╚════╝░╚═════╝░${NC}"
echo
echo -e "${YELLOW}Visit https://docs.netos.io for support${NC}"
echo
# Confirm database password change

echo -e "${BLUE}#####################################################################${NC}"
echo
print_info "If this is a production system, please change the MySQL password for Semaphore."
print_info "The database password is set in: /netos/netos-netops/vars/secrets.yml."
echo
print_info "This script will install Ansible Semaphore and import Netos projects."
print_info "You can then deploy and manage NetBox, Netos Pod, and more."
echo
print_info "You should update the MySQL password/variable in the Semaphore Global Settings"
print_info "environment in Sempahore after installation, if you change it now."
echo
echo -e "${BLUE}#####################################################################${NC}"
echo
read -p "$(echo -e ${YELLOW}Press enter to continue, or CTRL-C to exit...${NC})"
echo
echo

# Step 1: Install Python3 and Virtualenv if not already installed
print_info "Installing Required Packages"
apt update -y && apt install -y $PYTHON_VERSION $PYTHON_VERSION-venv git
if [ $? -ne 0 ]; then
    print_error "Failed to install required packages."
    exit 1
fi
print_success "System updated and prerequisites installed."

# Step 2: Create a virtual environment
if [ -d "$VENV_DIR" ]; then
    print_warning "Virtual environment already exists."
else
    $PYTHON_VERSION -m venv $VENV_DIR
    chmod -R u+x $VENV_DIR/bin
    chmod -R u+rwx $VENV_DIR
    print_info "Virtual environment created."
fi

# Step 3: Activate the virtual environment
source $VENV_DIR/bin/activate

# Step 4: Upgrade pip and Install Ansible
pip install --upgrade pip
if [ "$ANSIBLE_VERSION" == "latest" ]; then
    pip install ansible
else
    pip install ansible==$ANSIBLE_VERSION
fi
if [ $? -ne 0 ]; then
    print_error "Failed to install Ansible."
    deactivate
    exit 1
fi

# Step 5: Deploy Semaphore
print_info "Running Semaphore Deploy..."
export ANSIBLE_HOST_KEY_CHECKING=False
ansible-playbook semaphore-install.yml
if [ $? -ne 0 ]; then
    print_error "Semaphore deployment failed. Please check the logs."
    deactivate
    exit 1
fi

# Deactivate virtual environment after execution
deactivate

echo
echo -e "${BLUE}"#####################################################################"${NC}"
echo
echo -e "${BLUE}"Connect to http://$LOCAL_IP:3000 with username: admin and pass: admin"${NC}"
echo
echo -e "${BLUE}"#####################################################################"${NC}"
echo

print_success "Semaphore Deployment Completed Successfully"
echo