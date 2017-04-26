contract MultiValidator is AccountValidator {

    mapping(address => bool) public owners;

    function MultiValidator() {
        owners[msg.sender] = true;
    }

    function validate(address addr) constant returns (bool) {
        return owners[addr];
    }

    function addOwner(address addr) {
        if(owners[msg.sender])
            owners[addr] = true;
    }
}
