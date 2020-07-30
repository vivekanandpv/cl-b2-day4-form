<template>
  <v-card>
    <v-card-title>Login Form</v-card-title>
    <v-card-text>
      <v-form>
        <v-text-field label="Username" v-model="username" :rules="usernameRules"></v-text-field>
        <v-text-field label="Password" v-model="password" type="password" :rules="passwordRules"></v-text-field>
      </v-form>
    </v-card-text>
    <v-card-actions>
      <v-btn color="primary" @click="onSubmit">Login</v-btn>
    </v-card-actions>
  </v-card>
</template>

<script>
export default {
  data: function () {
    return {
      username: "",
      password: "",
      usernameRules: [
        (u) => !!u || "Username is required",
        (u) => u.length >= 5 || "Min length is 5",
      ],
      passwordRules: [
        (p) => !!p || "Password is required",
        (p) => p.length >= 8 || "Min length is 8",
      ],
    };
  },
  methods: {
    onSubmit: function () {
      const formData = {
        username: this.username,
        password: this.password,
      };
      console.log("Form submitted", formData);
    },
  },
};
</script>

<style>
</style>