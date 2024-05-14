import subprocess
import socket, os

def find_file_with_prefix(directory, prefix):
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.startswith(prefix):
                return os.path.join(root, file)

def get_docker_logs():
    base_path = "/workspace/containers"
    container_id = socket.gethostname()
    log_path = find_file_with_prefix(base_path, container_id) 
    #if not log_path:
    #    log_path = '/home/coder/pay.sql'
    return log_path