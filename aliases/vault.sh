fn vault(credname) {
        credentialsdir <= format("%s/credentials", $HOME)
        ciphered <= format("%s/%s.sh.gpg", $credentialsdir, $credname)
        credential = "/tmp/credential.sh"

        rm -f $credential
        print("Enter password: ")
        password <= head -n1 /dev/stdin
        echo $password | gpg -q --passphrase-fd 0 --batch --output $credential -d $ciphered
        import /tmp/credential
        rm -f $credential
}

bindfn vault vault
