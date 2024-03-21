#!/bin/bash

# Generate random password which is secure
generate_password() {
    # Characters set for password from all the keywords
    characters="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+{}[]"

    # Length of the password
    length=12

    # Password generating
    password=$(head /dev/urandom | tr -dc "$characters" | head -c "$length" ; echo '')

    echo "$password"
}

echo "Your random password is: $(generate_password)"
