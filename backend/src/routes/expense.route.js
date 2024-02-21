import { Router } from 'express'
import { addExpense, removeExpense, updateExpense } from '../controllers/expense.controller.js'
import { verifyJWT } from "../middlewares/auth.middleware.js";
const router = Router()


router.route("/add").post(verifyJWT, createGroup)
router.route("/remove").post(verifyJWT, joinGroup)
router.route("/update").post(verifyJWT, joinGroup)

export default router