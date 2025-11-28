// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import {percentage} from "./percentage.sol";
import {position, LP, hodl} from "./position.sol";

// AT the same price
// | (position1 - position2)/position1|

// type opportunityCost is percentage;
type opportunityCost is uint24;

function calculateOpportunityCost(position memory p1,position memory p2) returns(opportunityCost){
    // require(p1._type != p2._type && p1.price != p2.price);
}

// type impermanentLoss is opportunityCost;

type impermanentLoss is uint24;

function calculateImpermanentLoss(LP memory _lp,hodl memory _hodl) returns(impermanentLoss){}
