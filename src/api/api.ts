import {Web3} from "web3";
import crowdFunding from '../../backend/build/contracts/CroudFunding.json'
import config from '../../config.json'

export let web3 = new Web3(window.ethereum)

export let contract  = new web3.eth.Contract(crowdFunding.abi, config.contractAddress);
