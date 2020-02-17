<template>
  <div>
    <div v-for="item in menuItems" :key="item.name">
      <ul class="flex justify-between bg-gray-200" :class="item.highlight ? 'highlight' : ''">
        <p class="px-4 py-2 m-2">{{ item.name }}</p>
        <p class="px-4 py-2 m-2">{{ item.price }}</p>
      </ul>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      menuItems: [
        {
          name: "Apple",
          price: 20,
          image_url: "../images/apple.jpg"
        },
        {
          name: "Orange",
          price: 21,
          image_url: "../images/orange.jpg"
        },
        {
          name: "Banana",
          price: 22,
          image_url: "../images/banana.jpg"
        },
        {
          name: "Grape",
          price: 23,
          image_url: "../images/grape.jpg"
        }
      ]
    };
  },
  created() {
    var self = this;
    self.menuItems.map((x, i) => {
      self.$set(self.menuItems[i], "highlight", false);
    });
    var init = 0;
    setInterval(function() {
      if (init === self.menuItems.length) {
        init = 0;
      }
      self.menuItems[init].highlight = true;
      self.$emit("imageChanged", self.menuItems[init].image_url);
      if (init === 0) {
        self.menuItems[self.menuItems.length - 1].highlight = false;
      } else {
        self.menuItems[init - 1].highlight = false;
      }
      init++;
    }, 2000);
  }
};
</script>

<style scoped>
.highlight {
  background-color: gray;
}
</style>
