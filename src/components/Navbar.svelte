<script>
  import { Link } from "svelte-routing";

  let links = [
    { text: 'Home', url: '/' },
    { text: 'About', url: 'about' },
    { text: 'Raise funds', url: '/donate' },
    { text: 'FAQs', url: '/faq' }
  ];

  const connectMetaMask = async () => {
    try {
      if (window.ethereum) {
        await window.ethereum.request({ method: 'eth_requestAccounts' });
        console.log('MetaMask connected!');
      } else {
        console.error('MetaMask not installed.');
      }
    } catch (error) {
      console.error('Error connecting to MetaMask:', error);
    }
  };
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
  <button on:click={connectMetaMask} class="btn btn-ghost normal-case text-xl">
    Connect
  </button>
</div>
