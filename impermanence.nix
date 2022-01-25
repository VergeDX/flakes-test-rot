{ ... }:
{
  home.persistence."/persistent" = {
    directories = [ "Projects" ];
    allowOther = true;
  };
}
