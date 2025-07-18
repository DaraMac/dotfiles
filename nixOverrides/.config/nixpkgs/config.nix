{
    packageOverrides = pkgs: {
    bottles = pkgs.bottles.override {
      # disable NixOS warning
      removeWarningPopup = true;
    };
  };
}

