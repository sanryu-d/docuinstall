const axios = require("axios");

axios
  .get("https://api.tickettailor.com/v1/orders", {
    auth: {
      username: "sk_1848_62984_51bcd36b2d17d718608f795dfbca9aac",
      password: "",
    },
  })
  .then((res) => console.log(res.data));