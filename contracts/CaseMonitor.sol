pragma solidity >=0.4.21;

contract CaseMonitor{

    Case[] cases; 
    mapping(bytes32 => uint) caseIdToIndex; 

    //defines a case along with its state
    struct Case {
        bytes32 id;
        string uuid;
        string caseName;
        bool isStudent;
        uint date; 
        CaseState state;
    }

    //possible case states 
    enum CaseState {
        Undefined,    //case has not been processed
        Accepted,     //case has been accepted
        Rejected,     //case has been rejected
        Paid          //case has been paid 
    }

    function _getCaseIndex(bytes32 _id) private view returns (uint) {
        return caseIdToIndex[_id]; 
    }

    function addCase(string memory _uuid, string memory _caseName, bool _isStudent, uint _date) public {

        //hash the crucial info to get a unique id 
        bytes32 id = keccak256(abi.encodePacked(_uuid, _caseName, _isStudent, _date)); 

        //require that the case be unique (not already added) 
        require(!caseExists(id));
        
        //add the case 
        cases.push(Case(id, _uuid, _caseName, _isStudent, _date, CaseState.Undefined)); 
        uint newIndex = cases.length-1;
        caseIdToIndex[id] = newIndex+1;
        
        //return the unique id of the new case
        //return uuid;
    }

    function caseExists(bytes32 _caseId) public view returns (bool) {
        if (cases.length == 0)
            return false;
        uint index = caseIdToIndex[_caseId]; 
        return (index > 0); 
    }

    function getAllCases() public view returns (bytes32[] memory) {
        bytes32[] memory output = new bytes32[](cases.length); 

        //get all ids 
        if (cases.length > 0) {
            uint index = 0;
            for (uint n = cases.length; n > 0; n--) {
                output[index++] = cases[n-1].id;
            }
        }
        
        return output; 
    }

    function getCase(bytes32 _caseId) public view returns (
        bytes32 id,
        string memory uuid,
        string memory caseName,
        bool isStudent,
        uint date, 
        CaseState state) {
        
        //get the case
        if (caseExists(_caseId)) {
            Case storage theCase = cases[_getCaseIndex(_caseId)];
            return (theCase.id, theCase.uuid, theCase.caseName, theCase.isStudent, theCase.date, theCase.state); 
        }
        else {
            return (_caseId, "",  "", false, 0, CaseState.Undefined); 
        }
    }
}