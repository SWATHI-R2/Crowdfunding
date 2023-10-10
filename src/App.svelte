<script>
  import { Router, Link, Route } from "svelte-routing";
  import Home from "./pages/Home.svelte";
  import Donation from "./pages/Donation.svelte";

  export let url = "";
</script>

<Router {url}>
    <Route path="/donation/:id" let:params><Donation id={params.id}  /></Route>
    <Route path="/"><Home /></Route>
</Router>