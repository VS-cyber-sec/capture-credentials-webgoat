# capture-credentials-webgoat

Hands-on exercise: capturing credentials using WebGoat and Wireshark in Kali Linux.

# Capture Credentials with OWASP WebGoat and Wireshark

## Project Overview
This repository contains a hands-on exercise to capture and analyze network traffic to find exposed credentials. The lab environment uses OWASP WebGoat and Wireshark on Kali Linux.

## Tools Used
- OWASP WebGoat – vulnerable web application for practicing attacks.
- Wireshark – packet capture tool.
- Kali Linux – penetration testing OS.
- Docker – containerization platform.

## Setup Instructions
1. Install Docker:
   ```bash
   sudo apt update && sudo apt install docker.io -y
   sudo systemctl start docker
   sudo systemctl enable docker

2. Install Wireshark:

       sudo apt install wireshark -y
       sudo usermod -aG wireshark $(whoami)
    
4. Run WebGoat:

       sudo docker pull webgoat/webgoat
       sudo docker run --name webgoat -it -p 0.0.0.0:8080:8080 webgoat/webgoat

Access WebGoat at http://your-ip:8080/WebGoat

    Analysis Instructions

    Start capturing traffic in Wireshark.

    Log in to WebGoat.

    Apply display filter: http.request.method == "POST"

    Identify exposed credentials.

    Save packets and document findings.

Make the script executable:

     chmod +x setup/install_tools.sh
   
