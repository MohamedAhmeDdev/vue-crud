<template>
  <div class="signup-container">
    <form @submit.prevent="signup">
      <label>UserName</label>
      <input type="text" v-model="name" />

      <label>UserEmail</label>
      <input type="text" v-model="email" />
      <div v-if="emailValidation" class="error">{{ emailValidation }}</div>

      <label>Password</label>
      <input type="text" v-model="password" />

      <label>Confirm Password</label>
      <input type="text" v-model="confirm_password" />

      <div v-if="error" class="error">{{ error }}</div>
      <button class="submit">submit</button>
    </form>
  </div>
</template>

<script>
export default {
  data() {
    return {
      name: "",
      email: "",
      password: "",
      confirm_password: "",
      error: null,
      emailValidation: null,
    };
  },
   methods: {
    signup() {
      // validate all fields
      this.error = this.password.length > 0 && this.name.length > 0 && this.email.length > 0 && this.confirm_password.length > 0 ? "" : "Field must be field";

      // validate email
      this.emailValidation =  /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(this.email) ? "" : "Email is incorrect";
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
