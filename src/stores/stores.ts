// stores.js
import { writable, type Writable } from 'svelte/store';
import type { Contract } from 'web3';

var data = localStorage.getItem('eth')

export let eth  = writable( 
    data ? JSON.parse(data) :{
    isConnected:false,
    walletAddress:''
});


eth.subscribe(value => {
    localStorage.setItem('eth', JSON.stringify(value));
})

