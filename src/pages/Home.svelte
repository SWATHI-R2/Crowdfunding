<script lang='ts'>
  import Card from '../components/Cards.svelte';
  import Navbar from '../components/Navbar.svelte';
  import img from '../assets/medical.jpeg'
  import { onMount } from 'svelte';
  import { contract } from '../api/api';
  import type { Donation } from '../stores/stores';
  let projects :Donation[] =[]
    onMount(async()=> projects = (await contract.methods.allCampaigns().call()))
   
</script>
<main class="bg-white">
  <Navbar />
  <section>
    <h1 class="text-center text-5xl font-bold my-10 text-emerald-900">Health Crowdfunding</h1>
    <p class="text-black text-center text-3xl">Welcome to our health crowdfunding platform. Support those in need!</p>
    <div class="flex justify-center items-center flex-wrap py-20">
      {#if projects.length}
        {#each projects as project}
          <div class="p-10 w-1/3"> 
            <Card imageSrc={img} amount={project.amount} id={project.id} fund={project.fund} title={project.title} fundsRaiser={project.fundraiser} />
          </div>
        {/each}
      {/if}
    </div>
  </section>
</main>
  