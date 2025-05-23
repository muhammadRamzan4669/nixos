{

  description = "My First Flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-24.11";
  };

  outputs = { self, nixpkgs, ... }:
	  let
	    lib = nixpkgs.libs;
	  in 
	  {
	    nixosConfigurations = {
	      nixos = lib.nixosSystem {
	        system = "x86_64-linux";
		modules = [./configuration.nix];
	      }
	    };
   };

}
