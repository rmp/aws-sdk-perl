package Test::CustomCredentials {
  use Moose;
  use Paws::Credential;
  with 'Paws::Credential';

  sub access_key { 'CustomAK' };
  sub secret_key { 'CustomSK' };
  sub session_token {};

}

1;
