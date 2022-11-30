<template>
  <div class="container">
    <form @submit.prevent=" handleUpdateForm">
      <label>Book Author</label>
      <input type="text" v-model="book.author" />

      <label>Book Title</label>
      <input type="text" v-model="book.title" />

      <label>Book Description</label>
      <input type="text" v-model="book.description" />

      <button class="submit">submit</button>
    </form>
  </div>
</template>

<script>
import axios from "axios";
export default {
  data() {
    return {
      book: {},
    };
  },

  created() {
    axios.get(`http://localhost:5000/books/${this.$route.params.id}`)
      .then((res) => {
        this.book = res.data;
      })
      .catch((error) => {
        console.log(error);
      });
  },

   methods: {
        handleUpdateForm() {
            axios.patch(`http://localhost:5000/books/${this.$route.params.id}`, this.book).then((res) => {
                console.log(res)
                this.$router.push('/')
            }).catch(error => {
                console.log(error)
            })
        }
    }

};
</script>

<style scoped>
form {
  max-width: 420px;
  height: 500px;
  margin: 30px auto;
  background: #eff5f5;
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

button{
    background-color: rgba(95, 158, 160, 0.418);
  letter-spacing: 1px;
  outline: none;
  border: none;
  font-size: 15px;
  padding: 8px 25px;
}
</style>