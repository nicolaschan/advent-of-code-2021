with import <nixpkgs> { }; 

runCommand "dummy" {
    buildInputs = [ elixir ];
} ""
