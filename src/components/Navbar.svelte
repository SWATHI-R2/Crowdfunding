<script>
    let links=[
        {text:'Home', url:"/"},
        {text:'About', url:"/"},
        {text:'Raise funds', url:"/"},
        {text:'FAQs', url:"/"}
        ];
</script>

<style>
 
 
</style>

<div class="navbar bg-[#0b4b44] text-neutral-content">
  <a class="btn btn-ghost normal-case text-xl mr-auto">Donation</a>
    {#each links as { text, url }}
      <span class="btn btn-ghost normal-case text-xl">
        <a href={url}>{text}</a>
      </span>
    {/each}
</div>