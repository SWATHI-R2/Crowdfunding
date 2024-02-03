<!-- Navbar.svelte -->
<script>
  import { Link } from "svelte-routing";
  import { isConnected, walletAddress } from "../stores/stores";

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
        isConnected.set(true);
        const accounts = await window.ethereum.request({ method: 'eth_accounts' });
        walletAddress.set(accounts[0] || '');
        console.log('MetaMask connected!');
      } else {
        console.error('MetaMask not installed.');
      }
    } catch (error) {
      console.error('Error connecting to MetaMask:', error);
    }
  };

  const disconnectMetaMask = () => {
    isConnected.set(false);
    walletAddress.set('');
  };
</script>

<div class="navbar bg-[#0b4b44] text-neutral-content">
  <a class="btn btn-ghost normal-case text-3xl mr-auto"></a>
  
  {#if $isConnected}
    
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

