<script lang="ts">
  import Navbar from "../components/Navbar.svelte"; 
</script>
<div>
    <Navbar/>
    <div class="  shadow-lg rounded-xl border broder-2 max-w-screen-md flex flex-col mx-auto mt-20">
      <div class="text-3xl text-white text-center font-semibold mb-5 bg-accent p-10 rounded-t-xl" >Add Donation</div>
      <div class="mx-auto p-10 px-20 w-fit flex flex-col">
        
        <div class="mb-2">Patient's Name</div>
        <input type="text" placeholder="Name" class="input input-bordered input-md w-[500px]" />
        <div class="my-2">Date of Birth</div>
        <input type="date" placeholder="Date of Birth" class="mx-auto input input-bordered input-md w-full max-w-s " />
        <div class="my-2">Ailment/Medical condition</div>
        <input type="text" placeholder="Ailment/Medical condition" class="input input-bordered input-md w-[500px]" />
        <div class="mb-2">Hospital name</div>
        <input type="text" placeholder="Hospital name" class="input input-bordered input-md w-[500px]" />
        <div class="my-2">Hospitalisation status</div>
        <select class="mx-auto input input-bordered input-md w-full max-w-s">
          <option value="" disabled selected>Select</option>
          <option value="h1">Currently Hospitalised</option>
          <option value="h2">Does not require hospitalisation</option>
          <option value="h3">Recently discharged from the hospital</option>
          <option value="h4">Will be hospitalised soon</option>
        </select>
        <div class="my-2">Amount in ETH</div>
        <input type="text" placeholder="Amount" class="mx-auto input input-bordered input-md w-full max-w-s" />
        <div class="my-2">Wallet Address</div>
        <input type="text" placeholder="Amount" class="mx-auto input input-bordered input-md w-full max-w-s" />
        <div class="my-2">Description</div>
        <input type="text" placeholder="Description" class="textarea textarea-bordered w-[500px] h-[150px]">
        <div class="my-2">Upload Document</div>
        <input type="file" accept="image/jpeg" class="mx-auto w-full max-w-s" />
        <button class="btn btn-accent mt-10">Create Donation</button>
      </div>
    </div>
  </div>