<script setup>
import MyBar from "./components/MyBar.vue";
import MyCard from "./components/MyCard.vue";
import items from "./attractions.json";
import { ref } from "vue";

const filteredItems = ref(items);

const handleSearch = (searchTerm) => {
  if (searchTerm.trim() === "") {
    filteredItems.value = items;
  } else {
    filteredItems.value = items.filter((item) =>
      item.name.toLowerCase().includes(searchTerm.toLowerCase())
    );
  }
};
</script>

<!-- ต้อง cd 2; ก่อน npm run dev; -->
<template>
  <link
    href="https://fonts.googleapis.com/css2?family=Krub:wght@300;400;500;600;700&display=swap"
    rel="stylesheet"
  />

  <header>
    <MyBar @search="handleSearch" />
  </header>

  <main>
    <div className="grid-container">
      <!-- <MyCard v-for="item in items" v-bind="item" /> -->
      <MyCard v-for="item in filteredItems" :key="item.id" v-bind="item" />
    </div>
  </main>
</template>

<style scoped>
main {
  margin: 12px;
}

.grid-container {
  font-family: "Krub", sans-serif;
  display: grid;
  grid-column-gap: 0.5rem;
  grid-row-gap: 0.5rem;
}

@media (min-width: 576px) {
  .grid-container {
    grid-template-columns: repeat(1, 1fr);
  }
}

@media (min-width: 800px) {
  .grid-container {
    grid-template-columns: repeat(3, 1fr);
  }
}
</style>
