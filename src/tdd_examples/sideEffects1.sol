// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

contract File{
    uint256 public v1 = 1;
    uint256 public v2 = 2;

}

contract FileReader{
    
    event Result(uint256);
    function sumFromFile(address _file) public returns(uint256 res){
        (,bytes memory res1) = _file.staticcall(abi.encodeWithSignature("v1()"));
        (,bytes memory res2) = _file.staticcall(abi.encodeWithSignature("v2()"));
        res = abi.decode(res1, (uint256)) + abi.decode(res2, (uint256));
        emit Result(res);
    }
}