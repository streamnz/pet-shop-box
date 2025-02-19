var Adoption = artifacts.require("Adoption");
MediaSourceHandle.experts=function(deployer){
    deployer.deploy(Adoption);
}