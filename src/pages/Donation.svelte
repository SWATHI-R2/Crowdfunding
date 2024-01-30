
<script lang="ts">
  import Navbar from "../components/Navbar.svelte";
  import medical from '../assets/medical.jpeg'
  import Donation from '../assets/donation.jpg'
  export let id:number;
  const projects = [
      {
        title: 'My Little Boy Can’t Breathe, And I’m Helpless. Please Save Him For Me.',
        imageSrc: '3.avif',
        fundsRaised: 3000,
        goal: 10000,
        id: 1
      },
      {
        title: 'My Family Needs Your Help To Save Aziz From Lymphoma!',
        imageSrc: '3.avif',
        fundsRaised: 5000,
        goal: 10000,
        id: 2
      },
      {
        title: 'My Mother Is Fighting For Her Life And We Need Your Support To Save Her',
        imageSrc: '3.avif',
        fundsRaised: 9000,
        goal: 10000,
        id: 3
      }
    ];

</script>

<main>
  <Navbar/>
  <section>
  <h1 class="text-center text-5xl font-bold my-10 text-emerald-900">{projects[id -1].title}</h1>
  <div class="flex justify-center items-center flex-col m-40 rounded-3xl shadow-2xl py-20">
    <div class="carousel w-[1024px]">
      <div id="slide1" class="carousel-item relative w-full">
        <img src={medical} class="w-full" />
        <div class="absolute flex justify-between transform -translate-y-1/2 left-5 right-5 top-1/2">
          <a href="#slide4" class="btn btn-circle">❮</a> 
          <a href="#slide2" class="btn btn-circle">❯</a>
        </div>
      </div> 
      <div id="slide2" class="carousel-item relative w-full">
        <img src={medical} class="w-full" />
        <div class="absolute flex justify-between transform -translate-y-1/2 left-5 right-5 top-1/2">
          <a href="#slide1" class="btn btn-circle">❮</a> 
          <a href="#slide3" class="btn btn-circle">❯</a>
        </div>
      </div> 
      <div id="slide3" class="carousel-item relative w-full">
        <img src={medical} class="w-full" />
        <div class="absolute flex justify-between transform -translate-y-1/2 left-5 right-5 top-1/2">
          <a href="#slide2" class="btn btn-circle">❮</a> 
          <a href="#slide4" class="btn btn-circle">❯</a>
        </div>
      </div> 
      <div id="slide4" class="carousel-item relative w-full">
        <img src={medical} class="w-full" />
        <div class="absolute flex justify-between transform -translate-y-1/2 left-5 right-5 top-1/2">
          <a href="#slide3" class="btn btn-circle">❮</a> 
          <a href="#slide1" class="btn btn-circle">❯</a>
        </div>
      </div>
    </div>
    <div class="my-10 text-4xl font-semibold">About the fundsRaiser</div>
    <div class="px-20 text-2xl">
      <div>
        Hi,

      </div>
      <div class="my-10">
        My brother-in-law, Aziz Mohammad Sisawala, is a 23-year-old who has always brought joy and happiness to those around him. Since his birth on March 28, 2000, Aziz has been a blessing to his family. We were all living simple and steady life until recently when a sudden change in his health shattered our family's peace.

      </div>
      <div class="my-10">
        In the late days of August 2023, Aziz began to experience blurred vision. Concerned for his well-being, we took him to Holy Spirit Hospital, where he was shockingly diagnosed with blood cancer lymphoma on September 1, 2023. In just a few days, our world turned upside down as we realized that the cancer was spreading at three times the usual speed. Aziz is currently admitted to Jaslok Hospital, Mumbai, where he is undergoing intensive care and is on steroids.
      </div>
      <div class="my-10">
        Our family is devastated by this sudden turn of events. The toughest moment was telling him about it. The shock and weight of the news are hard for him, but his spirit remains undeterred. We're now doing everything possible to ensure he receives the best care, and together as a family, we stand by him, praying for his swift recovery.
      </div>

      <div class="my-10">
        Our family consists of five members, with only two of us earning a combined monthly income of Rs. 60,000. The cost of treatment, which includes chemotherapy and a potential bone marrow transplant, is staggering at Rs. 15,00,000. We've exhausted all our savings and resources and are finding it difficult to arrange for this amount.
      </div>
      <div class="my-10">
        Aziz is in a race against time, and every moment counts. To raise this amount as soon as possible I( Mariya Murtaza Sisawala ) have set up this fundraiser campaign.
      </div>
      <div class="my-10">
        Your contribution, no matter how small, will impact our lives. It's not just about the financial relief; it's about the hope, strength, and encouragement that you're giving us to keep fighting this tough battle against cancer.

      </div>
      <div class="my-10">
        Help us by making a heartfelt donation to this medical fundraiser and sharing our story. Every contribution will make a huge difference in our lives. Your incredible kindness and boundless compassion will mean the world to us as we struggle to bear the overwhelming weight of Aziz’s medical expenses. With your help, we can hope for the day when this young person can once again live a life full of joy and fulfillment with us.

      </div>
    </div>
    <button class="btn btn-accent btn-lg">Donate now</button>
  </div>
</main>