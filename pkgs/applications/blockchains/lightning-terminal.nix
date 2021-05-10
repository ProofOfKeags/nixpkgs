{ buildGoModule
, fetchFromGitHub
, lib
}:

buildGoModule rec {
  pname = "lightning-terminal";
  version = "0.4.1-alpha";

  src = fetchFromGitHub {
    owner = "lightninglabs";
    repo = "lightning-terminal";
    rev = "v${version}";
    sha256 = "0karig91x89rgknddn38wcsfif8b0ay22slx7d4m4rv0vaifjhgz";
  };

  vendorSha256 = "088lpgbp66bvg7jvhvfvsy17n2qir1mq7fl74ymbd0az7xw70j3p";

  subPackages = ["cmd/litd"];

  meta = with lib; {
    description = "Dashboard for managing LND, Lightning Loop, and Lightning Pool";
    homepage = "https://github.com/lightninglabs/lightning-terminal";
    license = licenses.mit;
    maintainers = with maintainers; [ proofofkeags ];
  };
}
