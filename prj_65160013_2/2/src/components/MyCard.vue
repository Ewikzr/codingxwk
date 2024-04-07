<template lang="">
  <div class="card">
    <img
      :src="coverimage"
      :alt="name"
      style="
        width: 100%;
        border: 3px solid rgba(21, 70, 137, 0.8);
        border-radius: 8px;
      "
    />
    <div className="container">
      <h3>{{ id }}. {{ name }}</h3>
      <p>{{ detail }}</p>
      <p>
        <a :href="address" target="_blank" class="google-maps-link"
          >Google Maps ></a
        >
      </p>
    </div>
  </div>
</template>

<script>
export default {
  props: ["id", "name", "coverimage", "detail", "address"],
};
</script>

<style scoped>
.card {
  box-shadow: 0 4px 8px 0 rgba(21, 70, 137, 0.3);
  transition: 0.3s;
  padding: 10px 10px;
  background-color: white;
  border-radius: 16px;
  margin-top: 8px;
  color: black;
  /* border: 3px solid rgba(21, 70, 137, 0.8); */
}

.card:hover {
  box-shadow: 0 8px 16px 0 rgba(21, 70, 137, 0.8);
}

.container {
  padding: 2px 16px;
  font-weight: 900;
}

.google-maps-link {
  text-decoration: none;
  color: #3376c9;
  font-weight: bold;
}

p {
  margin: 5px 0px;
  font-weight: 450;
  font-size: medium;
}

h3 {
  font-weight: bold;
  font-size: larger;
}
</style>
