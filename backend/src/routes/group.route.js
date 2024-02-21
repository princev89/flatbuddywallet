import { Router } from 'express'
import { createGroup, joinGroup } from '../controllers/group.controller.js'
import { verifyJWT } from "../middlewares/auth.middleware.js";
const router = Router()


router.route("/create").post(verifyJWT, createGroup)
router.route("/join").post(verifyJWT, joinGroup)

export default router