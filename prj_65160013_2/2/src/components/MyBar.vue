<template lang="">
  <link
    href="https://fonts.googleapis.com/css2?family=Krub:wght@300;400;500;600;700&display=swap"
    rel="stylesheet"
  />
  <div>
    <ul>
      <li>
        <h2>12 สถานที่ท่องเที่ยวทั่วโลกที่ต้องลองไปสักครั้งในชีวิตให้ได้</h2>
      </li>
      <li>
        <div class="custom_input">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            class="svg_icon bi-search"
            viewBox="0 0 16 16"
          >
            <path
              d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"
            ></path>
          </svg>
          <input
            class="input"
            type="text"
            placeholder="ค้นหาสถานที่.."
            v-model="searchTerm"
            @input="handleSearch"
          />
        </div>
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  data() {
    return {
      searchTerm: "",
    };
  },
  methods: {
    handleSearch() {
      this.$emit("search", this.searchTerm.trim());
    },
  },
};
</script>

<style scoped>
.custom_input {
  display: flex;
  align-items: center;
  position: relative;
  max-width: 100%;
}

.input {
  margin-top: 14.5px;
  margin-left: 10px;
  font-size: 16px;
  padding: 5px 12px;
  width: 100%;
  padding-left: 35px;
  outline: none;
  background: #ffffff;
  color: #000000;
  border: 1px solid #3376c9;
  border-radius: 20px;
  transition: 0.3s ease;
}

.input:focus {
  background: #ffffff;
  border: 1px solid #5a7ec7;
  border-radius: 20px;
}

.input:focus::placeholder {
  color: transparent;
}

.input::placeholder {
  color: #3376c9;
}

.svg_icon {
  margin-top: 14.5px;
  margin-left: 10px;
  position: absolute;
  left: 10px;
  fill: #3376c9;
  width: 18px;
  height: 18px;
}

ul {
  font-family: "Krub", sans-serif;
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #3376c9;
  justify-content: space-between;
}

li {
  float: left;
}

li h2 {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 25px;
  /* margin-left: 150px; */
  text-decoration: none;
  /* max-width: 500px; */
  font-weight: bold;
}

li.search {
  display: flex;
  align-items: center;
  color: white;
  padding: 14px 25px;
}

input {
  margin-left: 5px;
  border: none;
}
</style>
