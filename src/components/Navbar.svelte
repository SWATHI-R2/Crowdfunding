<script>
  import { Link } from "svelte-routing";
    let links=[
        {text:'Home', url:"/"},
        {text:'About', url:"/"},
        {text:'Raise funds', url:"/donate"},
        {text:'FAQs', url:"/faq"}
        ];
</script>

<div class="navbar bg-[#0b4b44] text-neutral-content">
  <a class="btn btn-ghost normal-case text-xl mr-auto">Donation</a>
    {#each links as { text, url }}
    <Link to={url}>  
      <span class="btn btn-ghost normal-case text-xl">
        {text}
      </span>
    </Link>
    {/each}
</div>