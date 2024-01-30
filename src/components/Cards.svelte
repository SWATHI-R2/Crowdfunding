<script lang="ts">
  
  import { Link } from "svelte-routing";
  export let title:string;
  export let imageSrc:string;
  export let fundsRaised:number;
  export let goal:number;
  export let id:number;
  </script>
  
  <div class="card w-96 glass ">
    <figure>
{#if imageSrc}
      <img src={imageSrc} alt={title} />
    {/if}
    </figure>
    <div class="card-body">
      <h2 class="card-title text-lg">{title}</h2>
      <progress class="progress progress-accent w-full" value={fundsRaised} max={goal}></progress>
      <p class="fund-details">
        <span>Raised: ${fundsRaised}</span>
        <span>Goal: ${goal}</span>
      </p>
      <div class="card-actions justify-end">
          {#if id}
            <Link to={'/donation/'+ id} ><button class="btn btn-accent">Donate Now</button></Link>
          {/if}
      </div>
    </div>
  </div>
  