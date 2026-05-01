import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";

export default defineConfig({
  plugins: [react()],
  server: {
    port: 3000,
    proxy: {
      "/api": {
        target: "http://a3ba36ba6f5c34bf992eb6702580df30-447055042.ap-south-1.elb.amazonaws.com:5000",
        changeOrigin: true,
        secure: false,
      },
    },
  },
});