<script lang="ts">
  import Navbar from "../components/Navbar.svelte";



  
</script>


<div>
    <Navbar/>

    <div class="  shadow-lg rounded-xl border broder-2 w-fit flex flex-col mx-auto mt-20">
      <div class="text-3xl text-white text-center font-semibold mb-5 bg-accent p-10 rounded-t-xl" >ADD Donation</div>
      <div class="mx-auto p-10 px-20 w-fit flex flex-col">
        
        <div class="mb-2">Patient's Name</div>
        <input type="text" placeholder="Name" class="input input-bordered input-md w-[300px]" />
        <div class="my-2">Patient's Date of Birth</div>
        <input type="date" placeholder="Date of Birth" class="mx-auto input input-bordered input-md w-full max-w-xs" />
        <div class="my-2">Amount in ETH</div>
        <input type="text" placeholder="Amount" class="mx-auto input input-bordered input-md w-full max-w-xs" />
        <div class="my-2">Wallet Address</div>
        <input type="text" placeholder="Amount" class="mx-auto input input-bordered input-md w-full max-w-xs" />
        <button class="btn btn-accent mt-10">Create Donation</button>
      </div>
    </div>
  </div>