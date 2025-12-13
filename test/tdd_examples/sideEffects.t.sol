// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;


import {Test, console2} from "forge-std/Test.sol";
import "../../src/tdd_examples/sideEffects1.sol";

contract sideEffectsTest is Test{
    File file;
    FileReader fileReader;

    function setUp() public{
        file = new File();
        fileReader = new FileReader();
    }

    function test__imperative__readFile() public {
        uint256 res = fileReader.sumFromFile(address(file));
        
    }
}