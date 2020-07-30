<template>
  <v-card>
    <v-card-title>Login Form</v-card-title>
    <v-card-text>
      <v-form>
        <v-text-field label="Username" v-model="username"></v-text-field>
        <v-text-field label="Password" v-model="password"></v-text-field>
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