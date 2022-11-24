<template>
  <div class="container">
    <form>
      <label>Book Author</label>
      <input type="text" />

      <label>Book Title</label>
      <input type="text" />

      <label>Book Description</label>
      <input type="text" />
    </form>
  </div>
</template>

<script>
export default {};
</script>

<style>
form {
  max-width: 420px;
  height: 500px;
  margin: 30px auto;
  background: #EFF5F5;
  text-align: left;
  padding: 40px;
  border-radius: 10px;
}
label {
  color: #aaa;
  display: inline-block;
  font-size: 20px;
  text-transform: uppercase;
  letter-spacing: 1px;
  font-weight: bold;
}
input {
  border-radius: 5px;
  background-color: white;
  width: 300px;
  padding: 10px 20px;
  outline: none;
  display: block;
  border: none;
  margin: 30px 0;
}
</style>
