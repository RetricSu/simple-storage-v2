pragma solidity >=0.4.0 <0.7.0;

//Declares a new contract
contract SimpleStorageV2 {
    //Storage. Persists in between transactions
    address x;
    address[] y;
    uint256 z;

    //Allows the address stored to be changed
    function set(address newValue) public {
        x = newValue;
    }
    
    //Returns the currently stored address
    function get() public view returns (address) {
        return x;
    }

    function setArray(address[] memory newValue) public {
        y = newValue;
    }

    function getArray() public view returns (address[] memory) {
        return y;
    }

    event SetValue(uint256 indexed _newValue, address[] _fromAddressList, address indexed _toAddress);

    function setValue(uint256 newValue) public {
        z = newValue;
        emit SetValue(newValue, y, x);
    }

    function getValue() public view returns (uint256) {
        return z;
    }
}
