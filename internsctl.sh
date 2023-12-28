#!/bin/bash




# Function to display CPU information
get_cpu_info() {
    lscpu
}

# Function to display memory information
get_memory_info() {
    free -h
}

# Function to display usage information
display_usage() {
    echo "Usage: $0 [options]"
    echo "Options:"
    echo "  -v, --version    Display the version of internsctl."
    echo "  -h, --help       Display help and usage information."
    echo " cpu getinfo       Display the cpu usage"
    echo "memory getinfo     Display memory usage. "
}

# Main script logic
if [[ "$1" == "--version" || "$1" == "--v" ]]; then
    echo "internsctl version v0.1.0"
elif [[ "$1" == "--help" || "$1" == "-h" ]]; then
    display_usage
elif [[ "$1" == "cpu" && "$2" == "getinfo" ]]; then
    get_cpu_info
elif [[ "$1" == "memory" && "$2" == "getinfo" ]]; then
    get_memory_info  
else      
    echo "Unknown command. Use '$0 --help' for usage information."
fi







