import express from "express"
import { PORT } from "./src/config.js"
import chatRouter from "./src/routes/chat.routes.js"
import notificacionRouter from "./src/routes/notificaciones.routes.js"

const app = express()
app.use(express.json())

app.use(chatRouter)
app.use(notificacionRouter)

app.listen(PORT, () => {
    console.log(`listening on port: ${PORT}`);
})