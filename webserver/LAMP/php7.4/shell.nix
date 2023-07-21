let
pkgs = import (builtins.fetchTarball {
        url = "https://github.com/NixOS/nixpkgs/archive/4426104c8c900fbe048c33a0e6f68a006235ac50.tar.gz";
    }) {};
in
pkgs.mkShell {
    pname="test";
    version="0.1.0";
    buildInputs = with pkgs;
    [ php74base 
    apacheHttpd
    mysql
    postgresql
    mariadb
    ];
}
