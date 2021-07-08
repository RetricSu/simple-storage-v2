pragma experimental ABIEncoderV2;
pragma solidity >=0.4.0 <0.7.0;


//Declares a new contract
contract SimpleStorageV2 {

    struct MultiTypeArray {
        uint z;
        address x;
        address[] y;
    }

    //Storage. Persists in between transactions
    address x;
    address[] y;
    uint z;

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

    function setUint(uint newValue) public {
        z = newValue;
    }

    function getUintAndAddress() public view returns (MultiTypeArray memory) {
        return MultiTypeArray(z, x, y);
    }

}
