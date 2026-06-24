{
inputs = {

    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
    
    zen-browser = {
      url = "github:youwen5/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    areofyl-fetch = {
      url = "github:areofyl/fetch";
      flake = false;
    };
    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  
outputs = { self, nixpkgs, home-manager, ... }@inputs: {
    nixosConfigurations.Ivalice = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      modules = [
      ./configuration.nix
      home-manager.nixosModules.home-manager
        {
         home-manager.useGlobalPkgs = true;
         home-manager.useUserPackages = true;
         home-manager.users.keio = import ./home.nix;
        }
      ];
    };
  };
}
