contract SingleValidator {
    function validate(address addr) constant returns (bool);
}


contract SingleValidator is AccountValidator {

    address public owner = msg.sender;

    function validate(address addr) constant returns (bool) {
        return addr == owner;
    }

    function setOwner(address owner_) {
        if(msg.sender == owner)
            owner = owner_;
    }

}
