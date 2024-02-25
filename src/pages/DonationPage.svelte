
<script lang="ts">
  import Navbar from "../components/Navbar.svelte";
  import medical from '../assets/medical.jpeg'
  import Donation from '../assets/donation.jpg'
  import { onMount } from "svelte";
  import { contract } from "../api/api";
  import Donate from "./Donate.svelte";
  import { eth } from "../stores/stores";
  import { navigate } from "svelte-routing";
  export let id:number;
  export let fundraiser:string;
  let donateAmount = 0
  let donation  =   {
    id:0,
    patientName: 'John Doe',
    title: 'Campaign Title',
    medicalCondition: 'Some Condition',
    hospitalName: 'General Hospital',
    description: 'Description of the campaign',
    amount: 100,
    fund: 0,
    fundraiser: '', 
    withdraw: false,
  }
  onMount(async()=> {
    donation = await contract.methods.getDonation(fundraiser,id).call()
  })
  async function  donate() {
    try {
      var result = await contract.methods.donate(fundraiser,id).send({from:$eth.walletAddress,value:`${donateAmount}`}).on('receipt', x => console.log(x));
      console.log(result)
      navigate('/');
    }
    catch (error) {
      alert(error)
    }
  }

</script>

<main class="bg-zinc-200 h-screen">
  <Navbar/>
  <section>
  <h1 class="text-center text-5xl font-bold my-10 text-emerald-900">{donation.title}</h1>
  <div class="flex justify-center bg-zinc-300 text-black items-center flex-col m-20 rounded-3xl shadow-2xl py-20">
    <div class="my-10 text-4xl font-semibold">About the fundsRaiser</div>
    <div class="px-20 text-2xl"> 
      <!--{donation.amount}-->
      {donation.description}
      <!--{donation.patientName}-->
      <!--{donation.fund}-->
      <!--{donation.hospitalName}-->
        
      </div>
      <input class="input input-bordered bg-zinc-300 mt-10" type="text" bind:value={donateAmount} >
      <button on:click={()=> donate()} class="btn btn-accent btn-lg mt-10 mx-auto">Donate now</button>
    </div>
</main>