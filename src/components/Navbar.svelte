<!-- Navbar.svelte -->
<script>
  import { Link } from "svelte-routing";
  import { eth } from "../stores/stores";

  let links = [
    { text: 'Home', url: '/' },
    { text: 'About', url: 'about' },
    { text: 'Raise funds', url: '/donate' },
    { text: 'FAQs', url: '/faq' }
  ];

  const connectMetaMask = async () => {
    try {
      console.log(window.ethereum)
      if (window.ethereum ) {
        let result = await window.ethereum.request({ method: 'eth_requestAccounts' });
        const accounts = await window.ethereum.request({ method: 'eth_accounts' });
        $eth.walletAddress = accounts[0] ?? '';
        $eth.isConnected = true;
        console.log('MetaMask connected!');
      } else {
        alert('MetaMask not installed.');
      }
    } catch (error) {
      alert('Error connecting to MetaMask:', error);
    }
  };

  const disconnectMetaMask = () => {
    $eth.isConnected = false;
    $eth.walletAddress = '';
  };
</script>

<div class="navbar bg-[#0b4b44] text-neutral-content">
  <button class="btn btn-ghost normal-case text-3xl mr-auto"></button>
  
  {#if $eth.isConnected}
    
    <button on:click={disconnectMetaMask} class="btn btn-ghost normal-case text-xl">
      Disconnect
    </button>
  {:else}
    <button on:click={connectMetaMask} class="btn btn-ghost normal-case text-xl">
      Connect
    </button>
  {/if}
  
  {#each links as { text, url }}
    <Link to={url}>
      <span class="btn btn-ghost normal-case text-xl">
        {text}
      </span>
    </Link>
  {/each}
</div>

