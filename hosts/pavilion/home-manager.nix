{
  username,
  homeStateVersion,
  ...
}:
{
  home = {
    username = username;
    homeDirectory = "/home/${username}";
    stateVersion = homeStateVersion;
  };

  imports = [
    ../../modules/home
  ];
}
