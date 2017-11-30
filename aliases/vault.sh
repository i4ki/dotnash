fn vault(credname) {
        credentialsdir <= format("%s/credentials", $HOME)
        ciphered <= format("%s/%s.sh.gpg", $credentialsdir, $credname)
        credential = "/tmp/credential.sh"

        rm -f $credential

        stty_orig <= stty -g
        stty -echo
        print("Enter password: ")
        password <= head -n1 /dev/stdin
        stty $stty_orig

        echo $password | gpg -q --passphrase-fd 0 --batch --output $credential -d $ciphered
        import /tmp/credential
        rm -f $credential
}

bindfn vault vault
