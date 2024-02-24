<script lang="ts">
  import { navigate } from "svelte-routing";
  import { contract } from "../api/api";
  import Navbar from "../components/Navbar.svelte"; 
  import { eth } from "../stores/stores";
  import Donation from "./DonationPage.svelte";

  
  let  patientName='';
  let  title = '';
  let  medicalCondition = '';
  let  hospitalName = '';
  let description = '';
  let  amount = 100;


  async function callContranct ( ) {
    console.log(await contract.methods.allCampaigns().call())
  }

  async function  createaDonation() {
    try {
      var result = await contract.methods.createDonation(amount,patientName,title,medicalCondition,hospitalName,description).send({from:$eth.walletAddress}).on('receipt', x => console.log(x));
      console.log(result)
      navigate('/');
    }
    catch (error) {
      alert(error)
    }
  }

</script>
<div>
    <Navbar/>
    <button on:click={callContranct}>hi</button>
    <div class="  shadow-lg rounded-xl border broder-2 max-w-screen-md flex flex-col mx-auto mt-20">
      <div class="text-3xl text-white text-center font-semibold mb-5 bg-accent p-10 rounded-t-xl" >Start a Campaign</div>
      <div class="mx-auto p-10 px-20 w-fit flex flex-col">
        
        <div class="mb-2">Patient's Name</div>
        <input bind:value={patientName} type="text" placeholder="Name" class="input input-bordered input-md w-[500px]" />
        <div class="mb-2">Campaign title</div>
        <input bind:value={title} type="text" placeholder="title" class="input input-bordered input-md w-[500px]" />
        <div class="my-2">Ailment/Medical condition</div>
        <input bind:value={medicalCondition} type="text" placeholder="Ailment/Medical condition" class="input input-bordered input-md w-[500px]" />
        <div class="mb-2">Hospital name</div>
        <input bind:value={hospitalName} type="text" placeholder="Hospital name" class="input input-bordered input-md w-[500px]" />
        <div class="mb-2">Amount in ETH</div>
        <input bind:value={amount} type="text" placeholder="Amount" class="input input-bordered input-md w-[500px]" />
        <div class="my-2">Wallet Address</div>
        {#if $eth.isConnected}
        <input type="text" placeholder="Wallet Address" class="mx-auto input input-bordered input-md w-full max-w-s" value= {$eth.walletAddress} readonly />
        {:else}
        <input type="text" placeholder="Address" class="mx-auto input input-bordered input-md w-full max-w-s" />
        {/if}
        <div class="my-2">Description</div>
        <input bind:value={description} type="text" placeholder="Description" class="textarea textarea-bordered w-[500px] h-[150px]">
        <div class="my-2">Upload Document</div>
        <!-- <input bind:value={} type="file" accept="image/jpeg" class="mx-auto w-full max-w-s" /> -->
        <button on:click={createaDonation} class="btn btn-accent mt-10">Create Donation</button>
      </div>
    </div>
  </div>