// stores.js
import { writable, type Writable } from 'svelte/store';
import type { Contract } from 'web3';

var data = localStorage.getItem('eth')

export interface Donation {
    id : number;
    patientName: string;
    title: string;
    medicalCondition: string;
    hospitalName: string;
    description: string;
    amount: BigInt;
    fund: BigInt;
    fundraiser: string;
    withdraw: boolean;
}  

export let eth  = writable( 
    data ? JSON.parse(data) :{
    isConnected:false,
    walletAddress:''
});

eth.subscribe(value => {
    localStorage.setItem('eth', JSON.stringify(value));
})

