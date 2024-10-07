{
    description = "System NixOS flake";

    inputs = {
        # NixOS official package source, using the unstable branch here
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

        nixos-cosmic = {
            url = "github:lilyinstarlight/nixos-cosmic";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        k-framework = {
            url = "github:runtimeverification/k";
        };
    };

    outputs = { self, nixpkgs, nixos-cosmic, k-framework, ... }@inputs: {
        # Please replace my-nixos with your hostname
        nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
            system = "x86_64-linux";
            modules = [
                # Import the previous configuration.nix we used,
                # so the old configuration file still takes effect
                ./configuration.nix

                {
                    nix.settings = {
                        substituters = [ "https://cosmic.cachix.org" "https://cache.iog.io" ];
                        trusted-public-keys = [ "cosmic.cachix.org-1:Dya9IyXD4xdBehWjrkPv6rtxpmMdRel02smYzA85dPE=" "hydra.iohk.io:f/Ea+s+dFdN+3Y/G+FDgSq+a5NEWhJGzdjvKNGv0/EQ="];
                    };
                }
                nixos-cosmic.nixosModules.default
                k-framework.defaultPackage
            ];
        };
    };
}
