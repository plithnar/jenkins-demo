openssl s_client -connect 209.97.150.102:443 -showcerts \
    </dev/null 2>/dev/null | openssl x509 -outform PEM | sudo tee \
    /usr/local/share/ca-certificates/209.97.150.102.crt
sudo update-ca-certificates

/bin/tini -- /usr/local/bin/jenkins.sh
