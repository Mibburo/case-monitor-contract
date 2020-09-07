var CaseMonitor = artifacts.require("CaseMonitor");

    module.exports = function(deployer) {
        deployer.deploy(CaseMonitor);
    };