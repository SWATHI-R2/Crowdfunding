<script>
  import Card from '../components/Cards.svelte';
    import Navbar from '../components/Navbar.svelte';
    
    import img from '../assets/medical.jpeg'
    const projects = [
      {
        title: 'My Little Boy Can’t Breathe, And I’m Helpless. Please Save Him For Me.',
        imageSrc: img,
        fundsRaised: 3000,
        goal: 10000,
        id: 1
      },
      {
        title: 'My Family Needs Your Help To Save Aziz From Lymphoma!',
        imageSrc: img,
        fundsRaised: 5000,
        goal: 10000,
        id: 2
      },
      {
        title: 'My Mother Is Fighting For Her Life And We Need Your Support To Save Her',
        imageSrc: img,
        fundsRaised: 9000,
        goal: 10000,
        id: 3
      }
    ];
   
</script>
  <main>
    <Navbar />
      <section>
        <h1 class="text-center text-5xl font-bold my-10 text-emerald-900">Health Crowdfunding</h1>
        <p class="text-black text-center text-3xl">Welcome to our health crowdfunding platform. Support those in need!</p>
      <div class="flex justify-center items-center py-20">
        {#each projects as project}
        <div class="p-10">
          <Card {...project} />
        </div>
        {/each}
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
  