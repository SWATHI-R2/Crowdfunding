<script>
  import { Router, Link, Route } from "svelte-routing";
  import Home from "./pages/Home.svelte";
  import Donation from "./pages/Donation.svelte";
  import Donate from "./pages/Donate.svelte";
  import Faq from "./pages/Faq.svelte";
  import About from "./pages/About.svelte";
  export let url = "";
</script>

<Router {url}>
    <Route path="/donation/:id" let:params><Donation id={params.id}/></Route>
    <Route path="/donate"><Donate /></Route>
    <Route path="/faq"><Faq /></Route>
    <Route path="/about"><About/></Route>
    <Route path="/"><Home /></Route>
</Router>