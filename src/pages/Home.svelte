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
      <div class="flex justify-center items-center py-20 ">
        {#if projects.length}
          {#each projects as project}
          <div class="p-10">
            <Card  imageSrc={img} amount={project.amount} id={project.id} fund={project.fund} title={project.title} fundsRaiser={project.fundraiser} />
          </div>
          {/each}
        {/if}
      </div>
  </main>
  
  <style>
    :global(body) {
    width: 100%; 
    height: 100vh; 
    margin: auto;
  }
    body {
      background-color: #f5f5f5;
      font-family: 'Arial', sans-serif;
      margin: 0;
      padding: 0;
    }
  
  </style>
  