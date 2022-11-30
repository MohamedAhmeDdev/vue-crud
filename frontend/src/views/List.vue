<template>
  <table>
    <thead>
      <tr>
        <th>No:</th>
        <th>Book Author</th>
        <th>Book Title</th>
        <th>Book Description</th>
        <th>Book Edit</th>
        <th>Book Delete</th>
      </tr>
    </thead>
    <tbody>
      <tr v-for="(book, index) in books" :key="book.id" class="book">
        <td>{{ index + 1 }}</td>
        <td>{{ book.author }}</td>
        <td>{{ book.title }}</td>
        <td>{{ book.description }}</td>
        <td>
          <router-link
           :to="{ name: 'listId', params:{ id: book.id } }" class="btn btn-danger">
            Edit
          </router-link>
        </td>

        <td>
          <button class="btn btn-success" @click.prevent="deleteStudent(book.id)">Delete</button>
        </td>
      </tr>
    </tbody>
  </table>
</template>

<script>
import axios from "axios";
import 'bootstrap/dist/css/bootstrap.min.css';

export default {
  data() {
    return {
      books: [],
    };
  },

  created() {
    axios.get("http://localhost:5000/books")
      .then((res) => {
        this.books = res.data;
      })
      .catch((error) => {
        console.log(error);
      });
  },

  methods: {
    deleteStudent(id) {
      axios.delete(`http://localhost:5000/books/${id}`)
        .then(() => {})
        .catch((error) => {
          console.log(error);
        });
    },
  },
};
</script>

<style>
table {
  margin: 30px auto;
  width: 800px;
  border-collapse: collapse;
}
table thead tr th {
  font-size: 20px;
  padding: 10px;
  border: 2px solid black;
}

table tbody tr td {
  font-size: 15px;
  text-align: center;
  padding: 10px;
}

</style>
