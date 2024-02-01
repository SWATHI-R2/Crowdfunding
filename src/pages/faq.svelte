<script lang="ts">
  import Navbar from "../components/Navbar.svelte"; 
  let faqData = [
      {
          question: "What is crowdfunding?",
          answer: "Crowdfunding is a quick and easy way to raise money using the internet and social media. Using an online fundraiser page, you can raise large amounts through donations from globally to help any social, medical, personal, or creative need. Campaigners have used crowdfunding to pay for critical medical treatments such as cancer care or transplant, support disaster relief work, help a non-profit or a social cause and even fund personal needs such as education or businesses. Read more about how crowdfunding works."
      },
      {   
          question: "How does blockchain enhance crowdfunding?",
          answer: "Blockchain provides transparency, security, and immutability to crowdfunding campaigns. Smart contracts on the blockchain automate the collection and distribution of funds, reducing the need for intermediaries and ensuring trust among participants."
      },   
      {  
          question: "Which blockchain platforms are commonly used for crowdfunding?",
          answer: "Ethereum is a popular choice for blockchain-based crowdfunding due to its smart contract functionality."
      },
      {
        question: "Is blockchain crowdfunding more secure than traditional methods?",
        answer: "Yes, blockchain crowdfunding is considered more secure because of its decentralized nature and cryptographic features. Transactions are recorded on an immutable ledger, reducing the risk of fraud and ensuring that contributors' funds are used as intended."
      },
      {
        question: "How can I contribute to a blockchain crowdfunding campaign?",
        answer: "To contribute, you typically need a compatible cryptocurrency (such as ETH for Ethereum-based campaigns). You send your contribution to the smart contract address provided by the campaign, and the blockchain ensures the secure and transparent execution of the transaction."
      }
  ];
</script>

<div>
  <Navbar/>
</div>
<section class="mx-auto mt-10 max-w-screen-lg text-emerald-900 p-8 rounded-lg shadow-md ">
  <h1 class="text-3xl font-semibold mb-5 text-center">Frequently Asked Questions (FAQ)</h1>
  {#each faqData as { question, answer }}
      <div class="mb-8">
        <h3 class="text-2xl font-semibold">{question}</h3>
          <p class="text-lg">{answer}</p>
      </div>
  {/each}
</section>
