<script lang="ts">
  
  import { Link } from "svelte-routing";
  export let title:string;
  export let imageSrc:string;
  export let fund:BigInt;
  export let amount:BigInt;
  export let id : number;
  export let fundsRaiser:string;
  </script>
  
  <div class="card w-96 glass bg-gray-300">
    <figure>
    {#if imageSrc}
      <img src={imageSrc} alt={title} />
    {/if}
    </figure>
    <div class="card-body">
      <h2 class="card-title text-lg text-emerald-900">{title}</h2>
      <progress class="progress progress-accent w-full" value={Number(fund)} max={Number(amount)}></progress>
      <p class="fund-details text-emerald-900">
        <span>Raised: Eth {Number(fund)}</span>
        <span>Goal: Eth {Number(amount)}</span>
      </p>
      <div class="card-actions justify-end">
            <Link to={`/donation/${fundsRaiser}/${id}`} ><button class="btn btn-accent">Donate Now</button></Link>
      </div>
    </div>
  </div>
  