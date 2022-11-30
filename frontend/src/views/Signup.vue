<template>
  <div class="signup-container">
    <form @submit.prevent="signup">
      <label>UserName</label>
      <input type="text" v-model="user.name" />

      <label>UserEmail</label>
      <input type="text" v-model="user.email" />
      <div v-if="emailValidation" class="error">{{ emailValidation }}</div>

      <label>Password</label>
      <input type="text" v-model="user.password" />

      <label>Confirm Password</label>
      <input type="text" v-model="user.confirm_password" />

      <div v-if="error" class="error">{{ error }}</div>
      <button class="submit">submit</button>
    </form>
  </div>
</template>

<script>
import axios from "axios";
export default {
  data() {
    return {
      user: {
        name: "",
        email: "",
        password: "",
        confirm_password: "",
      },
      error: null,
      emailValidation: null,
    };
  },
  methods: {
    signup() {
      // validate all fields
      this.error =
        this.user.password.length > 0 &&
        this.user.name.length > 0 &&
        this.user.email.length > 0 &&
        this.user.confirm_password.length > 0
          ? ""
          : "Field must be field";

      // validate email
      this.emailValidation =
        /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(this.user.email)
          ? ""
          : "Email is incorrect";

      axios.post("http://localhost:5000/users", this.user)
        .then(() => {
          // this.$router.push("/");
          this.user = {
            name: "",
            email: "",
            password: "",
            confirm_password: "",
          };
        })
        .catch((error) => {
          if (error.response?.status === 400) {
        alert("password does not much"); 
      } 
        });
    },
  },
};
</script>

<style scoped>
.signup-container {
  background-color: #b9e0ff;
  width: 100%;
  height: 700px;
}

form {
  margin: auto auto;
  max-width: 420px;
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
  margin: 15px 0;
}

.signup-container button {
  background-color: rgba(95, 158, 160, 0.418);
  letter-spacing: 1px;
  outline: none;
  border: none;
  font-size: 15px;
  padding: 8px 25px;
}
button:hover {
  background-color: white;
  border: 1px solid black;
}
.error {
  color: #ff0062;
  font-size: 0.8em;
  font-weight: bold;
}
</style>
