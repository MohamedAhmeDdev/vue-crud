<template>
  <div>
     <nav class="navbar">
      <ul>
    <router-link :to="{ name: 'list' }">Home</router-link>
    <router-link :to="{ name: 'form' }">AddList</router-link>
    <router-link :to="{ name: 'signup' }">Signup</router-link>
      </ul>
     </nav>
    <router-view />
  </div>
</template>

<script>
export default {
  name: "simple",
};
</script>

<style>
.navbar {
  padding: 10px;
  height: 70px;
  background-color: #d6e4e5;
}
.navbar ul {
  display: flex;
  justify-content: center;
}
.navbar a {
  letter-spacing: 1px;
  color: white;
  font-size: 20px;
  text-decoration: none;
  padding: 10px;
}

nav a.router-link-exact-active {
  border-radius: 4px;
  background-color: cadetblue;
}
</style>
